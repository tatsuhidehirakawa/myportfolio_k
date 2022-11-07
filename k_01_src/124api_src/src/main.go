package main

import (
	"context"
	"database/sql"
	"time"

	// "fmt"
	"log"
	"net/http"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
	_ "github.com/lib/pq"

	// "github.com/cosmtrek/air"   // Hot-reload
	// "github.com/tatsuhidehirakawa/STGprd_devpkg/k_01_src/124api_src/src/controllers"
	"github.com/tatsuhidehirakawa/STGprd_devpkg/sqlc/sqlc_pkg"
)

func main() {

	// // DB(PostgreSQL)への接続処理(環境変数導入バージョン)
	// cfg := NewConfig()
	// dsn := fmt.Sprintf("host=%s port=%s user=%s password=%s sslmode=%s", cfg.Host, cfg.Port, cfg.User, cfg.Password, cfg.Sslmode) // 「dsn」に結合した文字列を格納
	// db, err := sql.Open("postgres", dsn)

	db, err := sql.Open("postgres", "host=134dbs_dev port=5432 user=postgres password=passw0rd sslmode=disable")

	// DB接続時の例外処理
	if err != nil {
		log.Fatal(err)
	}

	/*--- GETのハンドラ部分を抽出 ------------------*/
	getting := func(c *gin.Context) {

		queries := sqlc_pkg.New(db)
		accountAttribute, err := queries.ListAccount_attribute(context.TODO())

		if err != nil {
			log.Fatal(err)
		}

		c.JSON(200, accountAttribute)
	}

	/*--- POSTのハンドラ部分 --------------------*/
	posting := func(c *gin.Context) {
		// パラメータのstructオブジェクトを作成
		var attributeParams sqlc_pkg.CreateAccount_attributeParams
		// 作成したオブジェクトの参照を渡してJSONデータをstructに注入
		c.BindJSON(&attributeParams)
		// DBアクセス用のインスタンスを生成
		queries := sqlc_pkg.New(db)
		// 第二引数で、先程作成したattributeParamsを渡す
		// ※今回は戻り値のSQLResultは使用しないので、破棄しているが、使用してもOK
		_, err := queries.CreateAccount_attribute(context.TODO(), attributeParams)

		// 以下は任意
		// POST成功がわかりやすいように、成功時はOKを返却し、失敗時はNGとエラー詳細を返却する
		if err == nil {
			c.JSON(http.StatusOK, gin.H{
				"status": "OK",
			})
		} else {
			c.JSON(http.StatusBadRequest, gin.H{
				"status": "NG",
				"detail": err.Error(),
			})
		}
	}

	/*--- PUTのハンドラ部分 -----------------------*/
	putting := func(c *gin.Context) {
		var attributeParams sqlc_pkg.UpdateAccount_attributeParams
		c.BindJSON(&attributeParams)
		queries := sqlc_pkg.New(db)
		_, err := queries.UpdateAccount_attribute(context.TODO(), attributeParams)

		if err == nil {
			c.JSON(http.StatusOK, gin.H{
				"status": "OK",
			})
		} else {
			c.JSON(http.StatusBadRequest, gin.H{
				"status": "NG",
				"detail": err.Error(),
			})
		}
	}

	/*--- DELETEのハンドラ部分 --------------------*/
	deleting := func(c *gin.Context) {
		// クエリパラメータからaccountIDを取得
		accountID := c.Param("accountID")
		queries := sqlc_pkg.New(db)
		err := queries.DeleteAccount_attribute(context.TODO(), accountID)

		if err != nil {
			log.Fatal(err)
		}

		c.JSON(200, "Successful deletion")

	}

	// /*--------------------------------------------*/

	router := gin.Default()

	// Access Allowance
	setCors := func(r *gin.Engine) {
		r.Use(cors.New(cors.Config{
			AllowOrigins:     []string{"*"}, // or host.docker.internal, or 110wbs_dev
			AllowMethods:     []string{http.MethodPut, http.MethodPatch},
			AllowHeaders:     []string{"Content-Type"},
			ExposeHeaders:    []string{"Content-Length"},
			AllowCredentials: true,
			MaxAge:           12 * time.Hour,
		}))
	}

	setCors(router)
	router.GET("/someGet", getting)
	router.POST("/somePost", posting)
	router.PUT("/somePut", putting)
	// :accontIDはクエリパラメータ
	router.DELETE("/someDelete/:accountID", deleting)
	// router.PATCH("/somePatch", patching)
	// router.HEAD("/someHead", head)
	// router.OPTIONS("/someOptions", options)

	router.Run()
}

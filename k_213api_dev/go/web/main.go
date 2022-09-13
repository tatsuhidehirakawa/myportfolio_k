package main 

import (
    "github.com/gin-gonic/gin"
)

func main() {

    // *gin.EngineをReturnする関数を宣言
    router := gin.Default()

    // jsonデータをGETさせる処理
    router.GET("/", func(c *gin.Context) {
        c.JSON(200, gin.H{
            "message": "Hello World",
        })
    })

    // GO構造体をjsonに変換する処理




    // 取り出した値をGO構造体に格納する処理




    // 値を取り出すSQL文をDBに投げる処理(GORM？)




    // サーバを起動する処理
    router.Run(":3000")
}





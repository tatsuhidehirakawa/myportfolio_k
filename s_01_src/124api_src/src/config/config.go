package config

type Config struct {
	Host     string
	Port     string
	User     string
	Password string
	Sslmode  string
}

func NewConfig() *Config {
	return &Config{
		Host:     os.Getenv("DATABASE_HOST"),
		Port:     os.Getenv("DB_PORT"),
		User:     os.Getenv("USER"),
		Password: os.Getenv("PGSQL_PW"),
		Sslmode:  os.Getenv("SSLMODE"),
	}
}

//                           // postgres
// cont := os.Getenv("CONT") // 134dbs_dev
// port := os.Getenv("PORT") // 5432
// user := os.Getenv("USER") // postgres
// 						  // passw0rd
// 						  // disable




// DB_HOST
// DB_PORT
// DB_USER  
// DB_PASS
// DB_NAME
// DB_SSLMODE
// DB_MAX_OPEN_CONNS
// DB_MAX_IDLE_CONNS
// DB_MAX_LIFETIME
// DB_LOG_MODE
// DB_LOG_LEVEL
// DB_LOG_FILE
// DB_LOG_MAX_SIZE
// DB_LOG_MAX_BACKUPS
// DB_LOG_MAX_AGE
// DB_LOG_COMPRESS
// DB_LOG_LOCAL_TIME
// DB_LOG_JSON_FORMAT
// DB_LOG_COLOR
// DB_LOG_SHORT_FILE
// DB_LOG_DISABLE_CALLER
// DB_LOG_DISABLE_STACKTRACE
// DB_LOG_DISABLE_ERROR_STACKTRACE
// DB_LOG_DISABLE_WARN_STACKTRACE
// DB_LOG_DISABLE_ERROR_VERBOSE
// DB_LOG_DISABLE_WARN_VERBOSE
// DB_LOG_DISABLE_ERROR_ATTRIBUTES
// DB_LOG_DISABLE_WARN_ATTRIBUTES
// DB_LOG_DISABLE_ERROR_REPORT
// DB_LOG_DISABLE_WARN_REPORT
// DB_LOG_DISABLE_ERROR_HOOK
// DB_LOG_DISABLE_WARN_HOOK
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_SOURCE
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_SOURCE
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_FULL
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_FULL
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_COLOR
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_COLOR
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_SOURCE_COLOR
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_SOURCE_COLOR
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_FULL_COLOR
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_FULL_COLOR
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_PRINT
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_PRINT
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_SOURCE_PRINT
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_SOURCE_PRINT
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_FULL_PRINT
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_FULL_PRINT
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_PRINT_COLOR
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_PRINT_COLOR
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_SOURCE_PRINT_COLOR
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_SOURCE_PRINT_COLOR
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_FULL_PRINT_COLOR
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_FULL_PRINT_COLOR
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_PRINT_LOG
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_PRINT_LOG
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_SOURCE_PRINT_LOG
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_SOURCE_PRINT_LOG
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_FULL_PRINT_LOG
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_FULL_PRINT_LOG
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_PRINT_LOG_COLOR
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_PRINT_LOG_COLOR
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_SOURCE_PRINT_LOG_COLOR
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_SOURCE_PRINT_LOG_COLOR
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_FULL_PRINT_LOG_COLOR
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_FULL_PRINT_LOG_COLOR
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_PRINT_LOG_FILE
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_PRINT_LOG_FILE
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_SOURCE_PRINT_LOG_FILE
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_SOURCE_PRINT_LOG_FILE
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_FULL_PRINT_LOG_FILE
// DB_LOG_DISABLE_WARN_HOOK_MESSAGE_FULL_PRINT_LOG_FILE
// DB_LOG_DISABLE_ERROR_HOOK_MESSAGE_PRINT_LOG_FILE_COLOR







// DB_HOST
// DB_PORT




// cont := os.Getenv("DATABASE_HOST") // 134dbs_dev
// port := os.Getenv("PORT")          // 5432
// user := os.Getenv("USER")          // postgres
// Password := os.Getenv("PGSQL_PW")  // passw0rd
// Sslmode := os.Getenv("disable")    // disable
up:
	migrate -source file://migrations -database postgres://jaherzog:12345@localhost:5432/live_stream_server?sslmode=disable up 1

down:
	migrate -source file://migrations -database postgres://jaherzog:12345@localhost:5432/live_stream_server?sslmode=disable down 1
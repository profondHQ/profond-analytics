

## How to run

This assumes the local machine is running on Ubuntu

1. Ensure docker is installed. If it is not installed, install it. Here are [the instructions](https://docs.docker.com/install/linux/docker-ce/ubuntu/).
2. Ensure docker compose is installed on your system. If it is not installed, install it. Here are [the instructions](https://docs.docker.com/compose/install/).
3. Clone this git repository

    ```bash
    git clone https://github.com/profondHQ/profond-analytics.git
    ```

4. Enter the profond-analytics folder

    ```bash
    cd profond-analytics
    ```
5. Download postgresql data from [here](https://drive.google.com/file/d/1OCPw0esKJQ563cs7BNt5p1e9TX1wTtMR/view?usp=sharing), unzip it and and put inside profond-analytics folder.

6. Convert `config/metabase_database.env.example` to `config/metabase_database.env`.
7. Update the environment variables `MB_DB_PASS`, `MB_ENCRYPTION_SECRET_KEY` and save.

    ```bash
    MB_DB_PASS=<put_here_the_password_for_the_metabase_user>
    MB_ENCRYPTION_SECRET_KEY=<Add a random string here as the secret>
    ```

8. Convert `config/postgres.env.example` to `config/postgres.env`.
9. Update the environment variables `POSTGRES_PASSWORD`, `METABASE_PASSWORD` and save.

    ```bash
    POSTGRES_PASSWORD=<put_here_the_password_for_the_postgres_user>
    METABASE_PASSWORD=<put_here_the_password_for_the_metabase_user>
    ```

10. Start the docker compose services

    ```bash
      docker-compose up -d
    ```

11. Wait for 1-2 minutes until the setup and migration database of metabase is finish.
Set up your metabase instance by visiting the [local metabase start URL](http://localhost:3000)
If you are on a server, use `http://<server IP>:3000`.

## Service - Port Mappings

| Service  | Port  |
| -------- | ----- |
| Metabase | 3000  |
| Postgres | 54320 |
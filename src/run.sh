SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: \
"create table users(id integer primary key, name text not null, class text not null);" \
"create index idx_users_id on users(id);" \
".indexes" \
".indexes users"


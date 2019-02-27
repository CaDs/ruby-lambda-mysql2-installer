## Steps

Build docker image

```
docker build -t lambda-ruby2.5-mysqldep .
```

Docker Run

```
docker run --rm -it -v $PWD:/var/task -w /var/task lambda-ruby2.5-mysqldep
```

Execute the following commands

```
cp -r /usr/lib64/mysql /usr/mysql
mkdir -p /var/task/lib
cp -a /usr/mysql/*.so* /var/task/lib/
bundle install --path=. --deployment
```

Exit and create a lambda package

```
zip -r ruby_gems.zip ./ruby/ ./lib/
```

Go to your AWS Lambda Console, create a new Lambda function and upload your .zip file

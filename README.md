# grunt-s3-args

Example Gruntfile to show how to upload your files with grunt-s3 to different buckets.

## Upload to prod

1. Edit sensitive prod config in `grunt-aws-prod.json`
2. Run `grunt s3:prod`

## Upload to dev

1. Edit sensitive dev config in `grunt-aws-dev.json`
2. Run `grunt s3:dev:NAME` where `NAME` is the bucket name (to be concat'd with a prefix)

distPath = 'dist'

module.exports = (grunt) ->
  require('load-grunt-tasks')(grunt)

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    prodSettings: grunt.file.readJSON('grunt-aws-prod.json')
    devSettings: grunt.file.readJSON('grunt-aws-dev.json')

    s3:
      options:
        access: 'public-read'

      dev:
        options:
          key: '<%= devSettings.key %>'
          secret: '<%= devSettings.secret %>'
          bucket: '<%= devSettings.bucket %>/<%= grunt.task.current.args[0] %>'
        upload: [
          {
            src: "*"
            dest: '/dev/assets/'
          }
        ]

      prod:
        options:
          key: '<%= prodSettings.key %>',
          secret: '<%= prodSettings.secret %>',
          bucket: '<%= prodSettings.bucket %>',
        upload: [
          {
            src: "*"
            dest: '/prod/assets/'
          }
        ]

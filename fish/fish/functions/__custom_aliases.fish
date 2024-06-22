function __custom_aliases
  function __user.create_abbr -d  "Create user custom abbreviation"
    set -l name $argv[1]
    set -l body $argv[2..-1]

    abbr -a -g $name $body
  end

  # Develop
  __user.create_abbr nds     npm run devServer
  __user.create_abbr ns      npm run start
  __user.create_abbr ni      npm install
  __user.create_abbr no      npm outdated
  __user.create_abbr rnm     rm -rf node_modules

  # Develop - Test
  __user.create_abbr nt      npm run test
  __user.create_abbr ntw     npm run test -- --watch
  __user.create_abbr ntc     npm run test -- --coverage

  # Develop - Yarn env
  __user.create_abbr yi      yarn install
  __user.create_abbr yo      yarn outdated
  __user.create_abbr ys      yarn start
  __user.create_abbr yd      yarn dev
  __user.create_abbr yt      yarn test

  # Develop - Git
  __user.create_abbr god     git checkout origin/develop
  __user.create_abbr got     git checkout origin/test
  __user.create_abbr goq     git checkout origin/qatest
  __user.create_abbr gos     git checkout origin/staging
  __user.create_abbr gomt    git checkout origin/master
  __user.create_abbr gom     git checkout origin/main
  __user.create_abbr gbu     'git add --all; git commit -m "[修改]打包"'

  # Terminal
  __user.create_abbr c       clear
  __user.create_abbr x       exit
  __user.create_abbr sf      source $__fish_config_dir/config.fish
  __user.create_abbr o       open .
  __user.create_abbr co      code .

  # Fisher
  __user.create_abbr fl      fisher list
  __user.create_abbr fi      fisher install
  __user.create_abbr fr      fisher remove

  # Cleanup declared functions
  functions -e __user.create_abbr
end

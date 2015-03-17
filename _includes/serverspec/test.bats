#!/usr/bin/env bats

@test "servrspec installed successfully" {
    run docker run -i -t -v $(pwd):/app -w /app ruby bash ./install.sh
    [ $status -eq 0 ]
    [[ ${output} =~ "13 gems installed" ]]
    [[ ${output} =~ "Successfully installed serverspec" ]]
}


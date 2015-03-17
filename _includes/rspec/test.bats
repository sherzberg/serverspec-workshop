#!/usr/bin/env bats

@test "sanity check" {
    run docker run -i -t ubuntu echo stuff
    [ $status -eq 0 ]
    [[ ${output} =~ "stuff" ]]
}

@test "rspec installed successfully" {
    run docker run -i -t -v $(pwd):/app -w /app ruby bash ./install.sh
    [ $status -eq 0 ]
    [[ ${output} =~ "6 gems installed" ]]
}

@test "rspec_1 executes successfully" {
    run docker run -i -t -v $(pwd):/app -w /app ruby bash ./test_rspec.sh
    [ $status -eq 0 ]
    [[ ${output} =~ "1 example, 0 failures" ]]
}


Build the docker image with

    make build

Run it with

    make run

then open the browser at `http://localhost:5000/hello/world` !

Prove that it works concurrently by running

    ab -n 8 -c 8 http://127.0.0.1:5000/

The root route has an artificial delay of 1 second.  You know the requests are served concurrently because it takes about 1 second to run 8 concurrent requests. Confront the result you get when you run the server with just 1 worker with

    make run_single_worker

and you try the same `ab` command.


<!--
> vim: textwidth=72
-->

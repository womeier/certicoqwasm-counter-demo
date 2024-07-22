#!/usr/bin/env python3
import click
import os


@click.command()
@click.option("--certicoq-wasm-file", type=str, help=".wat file", required=True)
@click.option("--insert-file", type=str, help=".wat file", required=True)
@click.option("--out-file", type=str, help=".wat file", required=True)
def insert(certicoq_wasm_file, insert_file, out_file):
    with open(insert_file) as f_insert:
        with open(certicoq_wasm_file) as f_wasm:
            cw = f_wasm.read().split("(table")
            i = f_insert.read()

            if os.path.exists(out_file):
                os.remove(out_file)

            with open(out_file, "w") as f_out:
                f_out.write("")

            with open(out_file, "a") as f_out:
                f_out.write(cw[0])
                f_out.write(i)
                f_out.write("(table")
                f_out.write(cw[1])



if __name__ == "__main__":
    insert()

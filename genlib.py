import subprocess
import re
from mako.template import Template

if __name__ == "__main__":
    # generate etherbuf
    subprocess.run(
        [
            "python3",
            "nanopb/generator/nanopb_generator.py",
            "etherbuf.proto"
        ],
        check=True
    )

    # open etherbuf.proto and enumerate messages
    messages = []
    render = ""
    with open("etherbuf.proto", "r") as file:
        for line in file.readlines():
            re_result = re.search("^message *([a-zA-Z0-9_]*) *{", line)
            if re_result:
                messages.append(re_result.group(1))
    messages.append("EtherbufNumMessages")

    with open("etherbuf.h.mako", "r") as file:
        template = Template(file.read())
        render = template.render(
            messages = messages
        )

    with open("etherbuf.h", "w") as file:
        file.write(render)
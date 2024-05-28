import subprocess
import re
from mako.template import Template

PROTO_PREFIX = "HTE"
C_PREFIX = PROTO_PREFIX + "_"

if __name__ == "__main__":
    # render the .proto
    render = ""
    with open("etherbuf.proto.mako", "r") as file:
        template = Template(file.read())
        render = template.render(
            proto_prefix = PROTO_PREFIX
        )
    with open("etherbuf.proto", "w") as file:
        file.write(render)

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
            messages = messages,
            c_prefix = C_PREFIX
        )

    with open("etherbuf.h", "w") as file:
        file.write(render)
FROM debian:bookworm-slim

# Umbrel builds this on the machine that installs the app.
# TARGETARCH is amd64 or arm64. The matching binary is already in bin/.
ARG TARGETARCH

RUN apt-get update \
  && apt-get install -y --no-install-recommends libgcc-s1 ca-certificates \
  && rm -rf /var/lib/apt/lists/*

COPY bin/autarki-${TARGETARCH} /usr/local/bin/autarki
COPY entrypoint.sh /usr/local/bin/autarki-entrypoint
RUN chmod 755 /usr/local/bin/autarki /usr/local/bin/autarki-entrypoint

EXPOSE 4173
ENTRYPOINT ["/usr/local/bin/autarki-entrypoint"]

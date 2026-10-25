FROM debian:bookworm-slim

# Umbrel builds this on the machine that installs the app.
# BuildKit sets TARGETARCH to amd64 or arm64.
# A builder that leaves TARGETARCH empty is selected with uname -m.
# Umbrel Home and Umbrel Pro are Intel, so they are amd64.
# A Raspberry Pi is arm64.
ARG TARGETARCH

RUN apt-get update \
  && apt-get install -y --no-install-recommends libgcc-s1 ca-certificates \
  && rm -rf /var/lib/apt/lists/*

COPY bin/autarki-amd64 /tmp/autarki-amd64
COPY bin/autarki-arm64 /tmp/autarki-arm64
COPY entrypoint.sh /usr/local/bin/autarki-entrypoint

RUN set -eu; \
  arch="${TARGETARCH:-}"; \
  if [ -z "$arch" ]; then \
    case "$(uname -m)" in \
      x86_64|amd64) arch=amd64 ;; \
      aarch64|arm64) arch=arm64 ;; \
      *) echo "Autarki has no program for $(uname -m)." >&2; exit 1 ;; \
    esac; \
  fi; \
  if [ ! -f "/tmp/autarki-${arch}" ]; then \
    echo "Autarki has no program for ${arch}." >&2; \
    exit 1; \
  fi; \
  echo "Autarki program: ${arch}"; \
  cp "/tmp/autarki-${arch}" /usr/local/bin/autarki; \
  chmod 755 /usr/local/bin/autarki /usr/local/bin/autarki-entrypoint; \
  rm -f /tmp/autarki-amd64 /tmp/autarki-arm64

EXPOSE 4173
ENTRYPOINT ["/usr/local/bin/autarki-entrypoint"]

FROM scratch

# Create a user and group with a specific UID and GID.
USER 1000:1000

COPY scanner-clair /scanner-clair

# Switch to the non-root user.
USER 1000:1000

ENTRYPOINT ["/scanner-clair"]

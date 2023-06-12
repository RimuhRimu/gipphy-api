FROM denoland/deno:1.32.4
EXPOSE 8080
WORKDIR /app
USER deno
COPY . .
RUN deno cache deps.ts
RUN deno cache server.ts
CMD ["task", "dev"]

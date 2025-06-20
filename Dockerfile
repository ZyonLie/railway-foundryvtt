FROM felddy/foundryvtt:12.331

ARG .eYyj$?cLvtdH2J
ARG scale.artlab@gmail.com
ARG FOUNDRY_VERSION=12.331

EXPOSE 30000/TCP

ENTRYPOINT ["./entrypoint.sh"]
CMD ["resources/app/main.mjs", "--port=30000", "--headless", "--noupdate", "--dataPath=/data"]
HEALTHCHECK --start-period=3m --interval=30s --timeout=5s CMD ./check_health.sh


FROM linuxserver/minetest:version-5.3.0

ENV HOME="/config/minland" \
MINETEST_SUBGAME_PATH="/config/minland/.minetest/games"

RUN \
  mkdir -p /config/minland/.minetest && \
  sed -i 's/config\/\.minetest/config\/minland\/\.minetest/g' /etc/cont-init.d/30-config && \
  sed -i 's/config\/\.minetest/config\/minland\/\.minetest/g' /etc/services.d/minetest/run
  

ADD minetest /config/minland/.minetest

EXPOSE 30000/udp
FROM ruby:3.2.2

# Install Node.js, npm, yarn
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get update -qq && apt-get install -y nodejs npm vim
RUN gem install bundler && gem install rails && npm install -g yarn
RUN npm install -g @vue/cli

# Install nginx
RUN apt-get install -y nginx
RUN mkdir /app
WORKDIR /app
COPY . .
RUN cd /app && bundle install
RUN cd /app && npm install
# Create a directory for the Vue.js build
RUN mkdir -p /app/client/dist
RUN mkdir -p /var/www/namefeeder.com

RUN rm -f /etc/nginx/sites-enabled/default
RUN cp /app/docker/nginx.conf /etc/nginx/sites-available/namefeeder.conf
RUN ln -s /etc/nginx/sites-available/namefeeder.conf /etc/nginx/sites-enabled/namefeeder.conf

EXPOSE 80 3000 5173

COPY docker/start-app /usr/local/bin/start-app
RUN chmod +x /usr/local/bin/start-app

ENTRYPOINT [ "start-app" ]
FROM ruby:3.2
WORKDIR /app

# Install build dependencies
RUN apt-get update && \
    apt-get install -y build-essential && \
    rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock* ./
RUN bundle install

COPY . .

EXPOSE 8000

CMD ["ruby", "app.rb"]
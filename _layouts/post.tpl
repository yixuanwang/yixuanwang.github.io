---
layout: default
---

<header class="header" role="banner">
        <div class="wrapper animated fadeIn">
            <div class="content">
                <div class="post-title {% if page.feature %} feature {% endif %}">
                    <h1>{{ page.title }}</h1>
                    <h4>{{ page.date | date_to_string }}</h4>
                    <p class="reading-time">
                      <i class="fa fa-clock-o"></i>
                      Reading time ~
                      {% assign words = content | number_of_words %}
                      {% if words < 360 %}
                        1 min
                      {% else %}
                        {{ words | divided_by:180 }} mins
                      {% endif %}
                    </p><!-- /.entry-reading-time -->
                    {% if page.project %}
                    <a class="btn zoombtn" href="{{site.url}}/projects/">
                    {% else %}
                    <a class="btn zoombtn" href="{{site.url}}/posts/">
                    {% endif %}
                        <i class="fa fa-chevron-left"></i>
                    </a>
                </div>
                {{ content }}
            </div>
        </div>
        {% if page.comments and site.disqus_shortname %}<section id="disqus_thread" class="animated fadeInUp"></section><!-- /#disqus_thread -->{% endif %}
    </header>
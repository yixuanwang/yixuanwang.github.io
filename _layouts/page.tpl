---
layout: default
---

<!-- Header -->
<header class="header" role="banner">
    <div class="wrapper animated fadeIn">
        <div class="content">
            <div class="post-title {% if page.feature %} feature {% endif %}">
                <h1>{{ page.title }}</h1>
                <a class="btn zoombtn" href="{{site.url}}">
                    <i class="fa fa-chevron-left"></i>
                </a>
            </div>
            {% if page.title == "Project" %}
                {% for project in site.projects %} 
                    {% if project.project %}
                        <ul>
                            <li class="wow fadeInLeft" data-wow-duration="1.5s">
                                <a class="zoombtn" href="{{ site.url }}{{ post.url }}">{{ project.title }}</a>
                                <p>{{ project.excerpt }}</p>
                                <a href="{{ site.url }}{{ post.url }}" class="btn zoombtn">Read More</a>
                            </li>
                        </ul>
                    {% endif %}
                {% endfor %}
            {% elsif page.title == "Posts" %}
                {% for post in site.posts %} 
                sadldkjas
                        <ul>
                            <li class="wow fadeInLeft" data-wow-duration="1.5s">
                                <a class="zoombtn" href="{{ site.url }}{{ post.url }}">{{ post.title }}</a>
                                <p>{{ post.excerpt }}</p>
                                <a href="{{ site.url }}{{ post.url }}" class="btn zoombtn">Read More</a>
                            </li>
                        </ul>
                {% endfor %}
            {% else %}
                {{ content }}
            {% endif %}
        </div>
    </div>
    {% if page.comments and site.disqus_shortname %}<section id="disqus_thread" class="animated fadeInUp"></section><!-- /#disqus_thread -->{% endif %}
</header>

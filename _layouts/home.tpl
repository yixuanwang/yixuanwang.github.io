---
layout: default
---

<header class="header flex" role="banner">
        <div class="container animated fadeIn">
            <div class="row">
                    <a href="{{ site.url }}">
                        <img src="/assets/img/pp.jpg" class="img-circle zoombtn animated rotateIn">
                    </a>
                    <h3 class="title">
                        <a class="zoombtn" href="{{ site.url }}">
                        	<p style="font-size:1.2rem;font-weight:300">{{ site.title }}</p>
			            </a>
                    </h3>
                    <hr class="hr-line">
                    <h3 class="title">
                        <a href="{{ site.url }}">
                        	<p style="font-size:1rem;font-weight:300">{{ site.bio }}</p>
			            </a>
                    </h3>
                    {% include social.inc %}
                  <hr class="hr-line">
                  <h3 class="title">
                         <a class="btn zoombtn" href="{{ site.url }}/about">
                         About
                         </a>
                         <a class="btn zoombtn" href="{{ site.url }}/posts">
                         Posts
                         </a>
                         <a class="btn zoombtn" href="{{ site.url }}/projects">
                         Projects
                         </a>
                         <a class="btn zoombtn" href="/assets/HaileyWang_CV.pdf">
                         Resume
                         </a>
                 </h3>
            </div>
        </div>
    </header>

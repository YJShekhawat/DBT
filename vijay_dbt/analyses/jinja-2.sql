{%- set apples=["A", "B", "C", "D"] -%}

{% for i in apples %}
    
    {% if i != "C" %}

        {{ i }}

    {% else %}

        I hate {{ i }}

    {% endif %}
    
{% endfor %}
(function(a){a.fn.tab=function(b){a.fn.tab.defaults={trigger:".wgt-tab-trigger",container:".wgt-tab-container",item:".item",current:"current",event:"mouseover",selectedIndex:0,auto:false,interval:2000,lazyload:true};var b=a.extend({},a.fn.tab.defaults,b);this.each(function(){var h=a(this),e=h.find(b.trigger+" "+b.item),g=h.find(b.container+">"+b.item),f=b.current,c=b.selectedIndex;e.eq(c).addClass(f);g.eq(c).addClass(f);e.each(function(){var l=a(this),j=e.index(l),k=g.eq(j);l.live(b.event,function(){e.removeClass(f);g.removeClass(f);l.addClass(f);k.addClass(f);c=j})});if(b.auto&&b.interval){var d=b.interval,i=e.length;setInterval(function(){e.eq(c).trigger(b.event);c++;if(c==i){c=0}},d)}})}})(jQuery);

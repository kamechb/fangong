useLazyLoad = !window.navigator.userAgent.match(/ipad.*OS 4_/gi);


var BoardLayout = function () {
        return {
            setup: function (a) {
                if (!this.setupComplete) {
                    $(document).ready(function () {
                        BoardLayout.allPins()
                    });
                    $(window).resize(_.throttle(function () {
                        BoardLayout.allPins()
                    }, 200));
                    $(function () {
                        if (window.userIsAuthenticated) {
                            Like.gridListeners();
                            Follow.listeners();
                            Comment.gridComment();
                            if (window.repinExperiment && window.repinExperiment !== "control") RepinDialog2.setup();
                            else {
                                RepinDialog.setup();
                                RepinDialog.grid()
                            }
                        }
                        //Zoom.setup()
                    });
                    this.center = !! a;
                    this.setupComplete = true
                }
            },
            pinsContainer: ".BoardLayout",
            pinArray: [],
            orderedPins: [],
            mappedPins: {},
            nextPin: function (a) {
                a = this.orderedPins.indexOf(a) + 1;
                if (a >= this.orderedPins.length) return 0;
                return this.orderedPins[a]
            },
            previousPin: function (a) {
                a = this.orderedPins.indexOf(a) - 1;
                if (a >= this.orderedPins.length) return 0;
                return this.orderedPins[a]
            },
            columnCount: 4,
            columns: 0,
            columnWidthInner: 205,
            columnMargin: 10,
            columnPadding: 22,
            columnContainerWidth: 0,
            allPins: function () {
                var a = $(this.pinsContainer + " .pin"),
                    c = this.getContentArea();
                this.columnWidthOuter = this.columnWidthInner + this.columnMargin + this.columnPadding;
                this.columns = Math.max(this.columnCount, parseInt(c / this.columnWidthOuter));
                if (a.length < this.columns) this.columns = Math.max(this.columnCount, a.length);
                c = this.columnWidthOuter * this.columns - this.columnMargin;
                var d = document.getElementById("wrapper");
                if (d) d.style.width = c + "px";
                $(".LiquidContainer").css("width", c + "px");
                for (c = 0; c < this.columns; c++) this.pinArray[c] = 0;
                document.getElementById("SortableButtons") ? this.showPins() : this.flowPins(a, true);
                if ($("#ColumnContainer .pin").length === 0 && window.location.pathname === "/") {
		    $("#ColumnContainer").addClass("empty");
                    setTimeout(function () {
                        window.location.reload()
                    }, 5E3)
                }
            },
            newPins: function () {
                this.flowPins($(this.pinsContainer + ":last .pin"))
            },
            flowPins: function (a, c) {
                if (c) {
                    this.mappedPins = {};
                    this.orderedPins = []
                }
                if (this.pinArray.length > this.columns) this.pinArray = this.pinArray.slice(0, this.columns);
                for (i = 0; i < a.length; i++) {
                    c = a[i];
                    var d = $(c).attr("data-id");
                    if (d && this.mappedPins[d]) $(c).remove();
                    else {
                        var e = jQuery.inArray(Math.min.apply(Math, this.pinArray), this.pinArray),
                            f = this.pinArray[e];
                        c.style.top = f + "px";
                        c.style.left = e * this.columnWidthOuter + "px";
                        this.pinArray[e] = f + c.offsetHeight + this.columnMargin;
                        this.mappedPins[d] = this.orderedPins.length;
                        this.orderedPins.push(d)
                    }
                }
				
                $("#ColumnContainer").height(Math.max.apply(Math, this.pinArray));
                this.showPins();
                useLazyLoad && LazyLoad.invalidate()
            },
            showPins: function () {
                $.browser.msie && parseInt($.browser.version) == 7 || $(this.pinsContainer).css("opacity", 1);
                var a = $(this.pinsContainer);
                setTimeout(function () {
                    a.css({
                        visibility: "visible"
                    })
                }, 200)
            },
            imageLoaded: function () {
                $(this).removeClass("lazy")
            },
            getContentArea: function () {
                return this.contentArea || document.documentElement.clientWidth
            }
        }
    }();
	
	
var LazyLoad = new(function () {
    var a = this,
        c = 0,
        d = 0,
        e = 100,
        f = $(window);
    a.images = {};
    a.invalidate = function () {
        $("img.lazy").each(function (u, n) {
            u = $(n);
            a.images[u.attr("data-id")] = u;
            g(u) && h(u)
        })
    };
    a.check = function () {
        var u, n = false;
        return function () {
            if (!n) {
                n = true;
                clearTimeout(u);
                u = setTimeout(function () {
                    n = false;
                    b()
                }, 200)
            }
        }
    }();
    var b = function () {
            var u = 0,
                n = 0;
            for (var l in a.images) {
                var p = a.images[l];
                u++;
                if (g(p)) {
                    h(p);
                    n++
                }
            }
        };
    a.stop = function () {
        f.unbind("scroll", j);
        f.unbind("resize", k)
    };
    var g = function (u) {
            return u.offset().top <= e
        },
        h = function (u) {
            if (u.hasClass("lazy")) {
                var n = u.attr("data-src"),
                    l = u.attr("data-id");
                u.load(function () {
                    if (u[0]) u[0].style.opacity = "1";
                    delete a.images[l]
                });
                u.attr("src", n);
                u.removeClass("lazy");
                if (u[0]) u[0].style.opacity = "0"
            }
        },
        j = function () {
            c = $(window).scrollTop();
            q();
            a.check()
        },
        k = function () {
            d = $(window).height();
            q();
            a.check()
        },
        q = function () {
            e = c + d + 600
        };
    if (useLazyLoad) {
        f.ready(function () {
            j();
            k()
        });
        f.scroll(j);
        f.resize(k)
    }
});
var BoardPicker = function () {
        return {
            setup: function (a, c, d) {
                a = $(a);
                var e = $(".BoardListOverlay", a.parent()),
                    f = $(".BoardList", a),
                    b = $(".CurrentBoard", a),
                    g = $("ul", f);
                a.click(function () {
                    f.show();
                    e.show()
                });
                e.click(function () {
                    f.hide();
                    e.hide()
                });
                $(g).on("click", "li", function () {
                    if (!$(this).hasClass("noSelect")) {
                        b.text($(this).text());
                        e.hide();
                        f.hide();
                        c && c($(this).attr("data"))
                    }
                    return false
                });
                a = $(".CreateBoard", f);
                var h = $("input", a),
                    j = $(".Button", a);
                $("strong", j);
                var k = $(".CreateBoardStatus", a);
                h.defaultValue("Create New Board");
                j.click(function () {
                    if (j.attr("disabled") == "disabled") return false;
                    if (h.val() == "Create New Board") {
                        k.html("Enter a board name").css("color", "red").show();
                        return false
                    }
                    k.html("").hide();
                    j.addClass("disabled").attr("disabled", "disabled");
                    $.post("/board/create/", {
                        name: h.val(),
                        pass_category: true
                    }, function (q) {
                        if (q && q.status == "success") {
                            g.append("<li data='" + q.id + "'><span>" + q.name + "</span></li>");
                            f.hide();
                            b.text(q.name);
                            h.val("").blur();
                            j.removeClass("disabled").removeAttr("disabled");
                            d && d(q.id)
                        } else {
                            k.html(q.message).css("color", "red").show();
                            j.removeClass("disabled").removeAttr("disabled")
                        }
                    }, "json");
                    return false
                })
            }
        }
    }();
    
if($('.BoardLayout').length){
  BoardLayout.contentArea = 940;
  BoardLayout.setup();
}

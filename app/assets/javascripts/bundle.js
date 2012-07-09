useLazyLoad = !window.navigator.userAgent.match(/ipad.*OS 4_/gi);
  var c = this,
        d = c._,
        e = {},
        f = Array.prototype,
        b = Object.prototype,
        g = f.slice,
        h = f.unshift,
        j = b.toString,
        k = b.hasOwnProperty,
        q = f.forEach,
        u = f.map,
        n = f.reduce,
        l = f.reduceRight,
        p = f.filter,
        s = f.every,
        v = f.some,
        B = f.indexOf,
        C = f.lastIndexOf;
    b = Array.isArray;
    var G = Object.keys,
        o = Function.prototype.bind,
        m = function (r) {
            return new L(r)
        };
    if (typeof exports !== "undefined") {
        if (typeof module !== "undefined" && module.exports) exports = module.exports = m;
        exports._ = m
    } else c._ = m;
    m.VERSION = "1.3.1";
    var y = m.each = m.forEach = function (r, x, z) {
            if (r != null) if (q && r.forEach === q) r.forEach(x, z);
            else if (r.length === +r.length) for (var E = 0, H = r.length; E < H; E++) {
                if (E in r && x.call(z, r[E], E, r) === e) return
            } else for (E in r) if (m.has(r, E)) if (x.call(z, r[E], E, r) === e) return
        };
    m.map = m.collect = function (r, x, z) {
        var E = [];
        if (r == null) return E;
        if (u && r.map === u) return r.map(x, z);
        y(r, function (H, I, K) {
            E[E.length] = x.call(z, H, I, K)
        });
        if (r.length === +r.length) E.length = r.length;
        return E
    };
    m.reduce = m.foldl = m.inject = function (r, x, z, E) {
        var H = arguments.length > 2;
        if (r == null) r = [];
        if (n && r.reduce === n) {
            if (E) x = m.bind(x, E);
            return H ? r.reduce(x, z) : r.reduce(x)
        }
        y(r, function (I, K, M) {
            if (H) z = x.call(E, z, I, K, M);
            else {
                z = I;
                H = true
            }
        });
        if (!H) throw new TypeError("Reduce of empty array with no initial value");
        return z
    };
    m.reduceRight = m.foldr = function (r, x, z, E) {
        var H = arguments.length > 2;
        if (r == null) r = [];
        if (l && r.reduceRight === l) {
            if (E) x = m.bind(x, E);
            return H ? r.reduceRight(x, z) : r.reduceRight(x)
        }
        var I = m.toArray(r).reverse();
        if (E && !H) x = m.bind(x, E);
        return H ? m.reduce(I, x, z, E) : m.reduce(I, x)
    };
    m.find = m.detect = function (r, x, z) {
        var E;
        A(r, function (H, I, K) {
            if (x.call(z, H, I, K)) {
                E = H;
                return true
            }
        });
        return E
    };
    m.filter = m.select = function (r, x, z) {
        var E = [];
        if (r == null) return E;
        if (p && r.filter === p) return r.filter(x, z);
        y(r, function (H, I, K) {
            if (x.call(z, H, I, K)) E[E.length] = H
        });
        return E
    };
    m.reject = function (r, x, z) {
        var E = [];
        if (r == null) return E;
        y(r, function (H, I, K) {
            x.call(z, H, I, K) || (E[E.length] = H)
        });
        return E
    };
    m.every = m.all = function (r, x, z) {
        var E = true;
        if (r == null) return E;
        if (s && r.every === s) return r.every(x, z);
        y(r, function (H,
        I, K) {
            if (!(E = E && x.call(z, H, I, K))) return e
        });
        return E
    };
    var A = m.some = m.any = function (r, x, z) {
            x || (x = m.identity);
            var E = false;
            if (r == null) return E;
            if (v && r.some === v) return r.some(x, z);
            y(r, function (H, I, K) {
                if (E || (E = x.call(z, H, I, K))) return e
            });
            return !!E
        };
    m.include = m.contains = function (r, x) {
        var z = false;
        if (r == null) return z;
        if (B && r.indexOf === B) return r.indexOf(x) != -1;
        return z = A(r, function (E) {
            return E === x
        })
    };
    m.invoke = function (r, x) {
        var z = g.call(arguments, 2);
        return m.map(r, function (E) {
            return (m.isFunction(x) ? x || E : E[x]).apply(E,
            z)
        })
    };
    m.pluck = function (r, x) {
        return m.map(r, function (z) {
            return z[x]
        })
    };
    m.max = function (r, x, z) {
        if (!x && m.isArray(r)) return Math.max.apply(Math, r);
        if (!x && m.isEmpty(r)) return -Infinity;
        var E = {
            computed: -Infinity
        };
        y(r, function (H, I, K) {
            I = x ? x.call(z, H, I, K) : H;
            I >= E.computed && (E = {
                value: H,
                computed: I
            })
        });
        return E.value
    };
    m.min = function (r, x, z) {
        if (!x && m.isArray(r)) return Math.min.apply(Math, r);
        if (!x && m.isEmpty(r)) return Infinity;
        var E = {
            computed: Infinity
        };
        y(r, function (H, I, K) {
            I = x ? x.call(z, H, I, K) : H;
            I < E.computed && (E = {
                value: H,
                computed: I
            })
        });
        return E.value
    };
    m.shuffle = function (r) {
        var x = [],
            z;
        y(r, function (E, H) {
            if (H == 0) x[0] = E;
            else {
                z = Math.floor(Math.random() * (H + 1));
                x[H] = x[z];
                x[z] = E
            }
        });
        return x
    };
    m.sortBy = function (r, x, z) {
        return m.pluck(m.map(r, function (E, H, I) {
            return {
                value: E,
                criteria: x.call(z, E, H, I)
            }
        }).sort(function (E, H) {
            E = E.criteria;
            H = H.criteria;
            return E < H ? -1 : E > H ? 1 : 0
        }), "value")
    };
    m.groupBy = function (r, x) {
        var z = {},
            E = m.isFunction(x) ? x : function (H) {
                return H[x]
            };
        y(r, function (H, I) {
            I = E(H, I);
            (z[I] || (z[I] = [])).push(H)
        });
        return z
    };
    m.sortedIndex = function (r, x, z) {
        z || (z = m.identity);
        for (var E = 0, H = r.length; E < H;) {
            var I = E + H >> 1;
            z(r[I]) < z(x) ? (E = I + 1) : (H = I)
        }
        return E
    };
    m.toArray = function (r) {
        if (!r) return [];
        if (r.toArray) return r.toArray();
        if (m.isArray(r)) return g.call(r);
        if (m.isArguments(r)) return g.call(r);
        return m.values(r)
    };
    m.size = function (r) {
        return m.toArray(r).length
    };
    m.first = m.head = function (r, x, z) {
        return x != null && !z ? g.call(r, 0, x) : r[0]
    };
    m.initial = function (r, x, z) {
        return g.call(r, 0, r.length - (x == null || z ? 1 : x))
    };
    m.last = function (r, x, z) {
        return x != null && !z ? g.call(r, Math.max(r.length - x, 0)) : r[r.length - 1]
    };
    m.rest = m.tail = function (r, x, z) {
        return g.call(r, x == null || z ? 1 : x)
    };
    m.compact = function (r) {
        return m.filter(r, function (x) {
            return !!x
        })
    };
    m.flatten = function (r, x) {
        return m.reduce(r, function (z, E) {
            if (m.isArray(E)) return z.concat(x ? E : m.flatten(E));
            z[z.length] = E;
            return z
        }, [])
    };
    m.without = function (r) {
        return m.difference(r, g.call(arguments, 1))
    };
    m.uniq = m.unique = function (r, x, z) {
        z = z ? m.map(r, z) : r;
        var E = [];
        m.reduce(z, function (H, I, K) {
            if (0 == K || (x === true ? m.last(H) != I : !m.include(H,
            I))) {
                H[H.length] = I;
                E[E.length] = r[K]
            }
            return H
        }, []);
        return E
    };
    m.union = function () {
        return m.uniq(m.flatten(arguments, true))
    };
    m.intersection = m.intersect = function (r) {
        var x = g.call(arguments, 1);
        return m.filter(m.uniq(r), function (z) {
            return m.every(x, function (E) {
                return m.indexOf(E, z) >= 0
            })
        })
    };
    m.difference = function (r) {
        var x = m.flatten(g.call(arguments, 1));
        return m.filter(r, function (z) {
            return !m.include(x, z)
        })
    };
    m.zip = function () {
        for (var r = g.call(arguments), x = m.max(m.pluck(r, "length")), z = new Array(x), E = 0; E < x; E++) z[E] = m.pluck(r, "" + E);
        return z
    };
    m.indexOf = function (r, x, z) {
        if (r == null) return -1;
        var E;
        if (z) {
            z = m.sortedIndex(r, x);
            return r[z] === x ? z : -1
        }
        if (B && r.indexOf === B) return r.indexOf(x);
        z = 0;
        for (E = r.length; z < E; z++) if (z in r && r[z] === x) return z;
        return -1
    };
    m.lastIndexOf = function (r, x) {
        if (r == null) return -1;
        if (C && r.lastIndexOf === C) return r.lastIndexOf(x);
        for (var z = r.length; z--;) if (z in r && r[z] === x) return z;
        return -1
    };
    m.range = function (r, x, z) {
        if (arguments.length <= 1) {
            x = r || 0;
            r = 0
        }
        z = arguments[2] || 1;
        for (var E = Math.max(Math.ceil((x - r) / z), 0), H = 0, I = new Array(E); H < E;) {
            I[H++] = r;
            r += z
        }
        return I
    };
    var D = function () {};
    m.bind = function (r, x) {
        var z, E;
        if (r.bind === o && o) return o.apply(r, g.call(arguments, 1));
        if (!m.isFunction(r)) throw new TypeError;
        E = g.call(arguments, 2);
        return z = function () {
            if (!(this instanceof z)) return r.apply(x, E.concat(g.call(arguments)));
            D.prototype = r.prototype;
            var H = new D,
                I = r.apply(H, E.concat(g.call(arguments)));
            if (Object(I) === I) return I;
            return H
        }
    };
    m.bindAll = function (r) {
        var x = g.call(arguments, 1);
        if (x.length == 0) x = m.functions(r);
        y(x, function (z) {
            r[z] = m.bind(r[z], r)
        });
        return r
    };
    m.memoize = function (r, x) {
        var z = {};
        x || (x = m.identity);
        return function () {
            var E = x.apply(this, arguments);
            return m.has(z, E) ? z[E] : (z[E] = r.apply(this, arguments))
        }
    };
    m.delay = function (r, x) {
        var z = g.call(arguments, 2);
        return setTimeout(function () {
            return r.apply(r, z)
        }, x)
    };
    m.defer = function (r) {
        return m.delay.apply(m, [r, 1].concat(g.call(arguments, 1)))
    };
    m.throttle = function (r, x) {
        var z, E, H, I, K, M = m.debounce(function () {
            K = I = false
        }, x);
        return function () {
            z = this;
            E = arguments;
            var P = function () {
                    H = null;
                    K && r.apply(z, E);
                    M()
                };
            H || (H = setTimeout(P, x));
            if (I) K = true;
            else r.apply(z, E);
            M();
            I = true
        }
    };
    m.debounce = function (r, x) {
        var z;
        return function () {
            var E = this,
                H = arguments;
            clearTimeout(z);
            z = setTimeout(function () {
                z = null;
                r.apply(E, H)
            }, x)
        }
    };
   


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

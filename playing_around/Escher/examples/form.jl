using Twitter

twitterauth("6TSknsNIdIB0SpjEPvmwGLO8F", 
            "C2m5jbodDVemnbGiD0rPDxFu3lptIvbWQ3VQHi2mELF1UrwUoG", 
            "71555548-HhUJKhkr6MkXgB0IXG6QYDKunHszeQ2KBHiDkg4zv", 
            "gh2zmIUDopVuDo9KICydIwQHGmulrolzju9BI13tGvToA")

tweets1 = get_search_tweets("#terrorists"; options = {"count" => "5"})

#=tweets1 = get_search_tweets("#terrorists", 
           options = Dict(
            "geocode"=>"52.5167,13.3833,100mi", 
            "count" => "10")
        )=#

tweets2 = get_search_tweets("#behappy"; options = {"count" => "5"})

t1 = [length(tweets1[1].text), length(tweets1[2].text), length(tweets1[3].text), length(tweets1[4].text), length(tweets1[5].text)]

t2 = [length(tweets2[1].text), length(tweets2[2].text), length(tweets2[3].text), length(tweets2[4].text), length(tweets2[5].text)]

#=function main(window)
    push!(window.assets, "widgets")

    inp = Input(Dict())

    s = sampler()
    form = vbox(
        # h1("Submit your rating"),
        h1(test),
        plaintext("Hello, World!"),
        watch!(s, textinput("", name=:name, label="Your name")),
        hbox("Your rating", watch!(s, slider(1:10, name=:rating)))
            |> packacross(center),
        trigger!(s, button("Submit", name=:submit))
    ) |> maxwidth(400px)

    lift(inp) do dict
        vbox(
            plugsampler(s, form) >>> inp,
            vskip(2em),
            string(dict)
        ) |> pad(2em)
    end
end=#

#=function main(window)
    plaintext(testLength)
end=#
using Gadfly

function main(window)
    plot(
        x = t1, y = t2, Theme(panel_fill=colorant"black", default_color=colorant"#FF36E5"), Geom.point, Geom.line
        )
    # plot(layer(x=rand(10), y=rand(10), Geom.point),
    #  layer(x=rand(10), y=rand(10), Geom.line))
    # plot(x=rand(10), y=rand(10), Geom.point, Geom.line)
    #=plot(z=(x,y) -> x*exp(-(x-int(x))^2-y^2),
         x=linspace(-8,8,150), y=linspace(-2,2,150), Geom.contour)=#
end

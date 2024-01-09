using PublicPkgTest
using Documenter

DocMeta.setdocmeta!(PublicPkgTest, :DocTestSetup, :(using PublicPkgTest); recursive=true)

makedocs(;
    modules=[PublicPkgTest],
    authors="",
    repo="https://github.com/bhftbootcamp/PublicPkgTest.jl/blob/{commit}{path}#{line}",
    sitename="PublicPkgTest.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://bhftbootcamp.github.io/PublicPkgTest.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/bhftbootcamp/PublicPkgTest.jl",
    devbranch="master",
)

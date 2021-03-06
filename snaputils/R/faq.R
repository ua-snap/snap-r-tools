# nolint start
snap_faqlist <- list(
  distributions = list(
    "Why use probability distributions?",
    shiny::tagList(
      shiny::p("Any statistic of interest can be calculated from the probability distribution of a random available.
               For example, by making complete distributions available for the four random variables in this app,
               the app computes the mean, median, IQR, standard deviation, minimum and maximum across space for a geographic region.
               Other statistics not shown in the app such as various distributions quantiles are equally accessible.", style = "text-align:justify"),
      shiny::p("The more that the original probability distributions are made available to a user directly, the user has the ability to access
               whatever statistics they are interested in rather than be restricted to a predetermined set.
               Distributions can also be integrated, collapsing over multiple levels of another variable such as climate models,
               to yield a marginal distribution across models. This depends on access to the individual distributions.", style = "text-align:justify"),
      shiny::img(src = "dist_graphic_bad.png", style = "align: left;", width = "49%"),
      shiny::img(src = "dist_graphic_good.png", width = "49%")
    )
  ),
  gcm = list(
    "What is a GCM?",
    shiny::tagList(
      shiny::p("General Circulation Models (GMCs) are used to depict how climate processes respond to the composition of various gases in the atmosphere.
               Using future projections of the composition of gases in the atmosphere, projections of future climate can be made.
               For this work, the GCMs provide different projections of future climate that are used to inform projections of future fire activity.
               If you are interested in exploring the range of burned area with these GCMs,
               the GFDL-CM3 and NCAR-CCSM4 models tend to correspond to the projections with the most area burned
               and the MRI-CGCM3 tends to have the least area burned. For more information, please see the following link.", style = "text-align:justify"),
      shiny::a("Intergovernmental Panel on Climate Change GCM guide",
               href = "http://www.ipcc-data.org/guidelines/pages/gcm_guide.html", target = "_blank")
    )
  ),
  rcp = list(
    "What is an RCP?",
    shiny::p("Representative Concentration Pathways (RCPs) are used to characterize the consequences of different assumptions
             about human population growth and economic development. In particular, economic development associated with energy usage
             (e.g. how much and from what sources) is an important driver of future climate.
             We consider 3 RCPs here (4.5, 6.0, and 8.5). RCP 4.5 represents an aggressive reduction
             in the emission of greenhouse gases like CO2 and methane.
             RCP 8.5 represents significant increases in the population and a continuation of the use of energy sources
             that emit large quantities of greenhouse gases.
             RCP 6.0 lies somewhere in between.", style = "text-align:justify")
  ),
  fmz = list(
    "What are fire management zones?",
    shiny::tagList(
      shiny::p("These regions are the current Fire Management Zones for Alaska. For more information, please see the following link.", style = "text-align:justify"),
      shiny::a("Bureau of Land Management / Alaska Fire Service - Alaska zone coverage maps",
               href = "https://afs.ak.blm.gov/fire-management/zones-alaska-zone-coverage-maps.php", target = "_blank"),
      shiny::br(), shiny::img(src = "Fire_Mgmt_Areas.png", width = "50%")
    )
  ),
  apps = list(
    "How did you make this app? Are other apps available?",
    shiny::tagList(
      shiny::p("This app is written in the",
               shiny::a("R programming language", href = "https://www.r-project.org/", target = "_blank"), "and built with the",
               shiny::a("Shiny", href = "https://shiny.rstudio.com/", target = "_blank"), "web application framework for R.
               Is your organization looking for similar web applications or dashboards for your data and analytics needs?
               SNAP designs R Shiny apps and other web-based tools and software ranging from simple to complex
               and suitable for a variety of stakeholders whose purposes include
               public outreach and scientific communication, directly supporting scientific research,
               and organizational data access and analytics.",
               shiny::a("Contact us", href = "https://www.snap.uaf.edu/about/contact/", target = "_blank"), "for details.",
               style = "text-align: justify;"),
      shiny::h3("Other R Shiny web applications"),
      shiny::p("Many additional Shiny apps are publicly available from SNAP. Here are just a few examples.",
               style = "text-align: justify;")
    )
  ),
  alfresco_simulations = list(
    "What do \"simulations\" refer to in the data selection area?",
    shiny::p("In order to accommodate the uncertainty associated with ignitions in a given year,
             ALFRESCO simulates several dozen different possible fire seasons for each year.
             In this context, each year in the historical record is just one single possible outcome that is consistent with the weather for that summer.
             Uncertainty in the out put form this tool comes from several different places.
             The ability to summarize across simulations using the mean, minimum or maximum,
             allows us to explore the uncertainty that is specifically associated with the simulation of fire activity in ALFRESCO.", style = "text-align:justify")
    ),
  factsheet_about = list(
    "What are fact sheets?",
    shiny::tagList(
      shiny::p("Fact sheets are short summary reports pertaining to selected data.
               The fact sheet button in the sidebar offers dynamic reports for download.
               Dynamic report generation refers to the creation of reports that update automatically in response to changing input such as a new data set.
               Data sets are often updated over time leading to routine, time-consuming report revision,
               or a similar report might need to be written based on different data entirely.
               Dynamic reports are typically used in cases like these where data are expected to change, affecting plots, tables and text in a document,
               and it would be cumbersome to revise a report by hand.", style = "text-align:justify"),
      shiny::p("In this application, fact sheets are customized based on the user's data selections and other input settings.
               Changing the selected range of years, the subset of climate models or geographic regions, and so on,
               changes the content of the report.
               Plots are included as displayed in the app and the report text is updated as well.", style = "text-align:justify"),
      shiny::p("Fact sheets are available when sufficient data are selected to deem robustly reportable.
               Note that at least 30 years of observations and at least one climate model (not just CRU data) must be selected.
               Otherwise the fact sheet download button will be unavailable.")
    )
  ),
  factsheet_availability = list(
    "Why are fact sheets not always available?",
    shiny::tagList(
      shiny::p("Fact sheets are available when sufficient data are selected.
               At least 30 years of observations are required.
               For example, this means that at least 30 unique years of data must be selected in the annual time series plot.
               This does not include any explicitly withheld observations (points toggled off by the user)
               or any data falling outside a selection box drawn by the user to focus on a subset of observations.
               Note that both of these actions serve to remove observations from the displayed regression model.
               Since the same is true when downloading a customized fact sheet, the sample size requirements are similarly determined.",
               style = "text-align:justify"),
      shiny::p("Dynamic reports are powerful, but imperfect.
               There may be extreme edge cases where a generated report includes text that does not make sense.
               For example, these fact sheets tend to focus on summarizing change through time.
               If a user selected only one year of data, while trivial plots would still be incorporated into a fact sheet,
               document text pertaining to such temporal changes would not make any sense and the resulting report would be clearly defective.
               This is separate from other more general considerations regarding ensuring that fact sheets
               contain summaries based on relatively robust data sets.", style = "text-align:justify"),
      shiny::p("Such a problem can be avoided with sensible data selection by the user in conjunction with the existing broader data selection requirements.
               Dynamic report generation generally attempts to strikes a balance between flexibility and rigidity.
               Flexibility allows a report to adapt to changing inputs, but it is impossible to anticipate all potential idiosyncrasies in the input data.
               Some document text may have to remain relatively fixed even if the user tries to incorporate more extreme inputs.
               Nevertheless, the available fact sheets represent a highly convenient, customizable resource when app content is properly prepared by the user.",
               style = "text-align:justify")
    )
  ),
  era40 = list(
    "What is ERA-40?",
    shiny::p("ERA 40 is a climate reanalysis data set.",
             shiny::a("ERA 40 summary and data access", href = "https://climatedataguide.ucar.edu/climate-data/era40", target = "_blank"),
             style = "text-align: justify;")
  ),
  eval_domains = list(
    "The domain map shows one Alaska domain. What are the 'land' and 'ocean' domains?",
    shiny::p("For land- and ocean-specific domains, the rectangle domain over Alaska is the same,
             but the GCM and ERA-40 grid cells within that domain are subset to those exclusively over land or ocean, respectively.
             This was done to investigate the potential influence on Alaska domain model selection
                               of land vs. ocean grid cells in the analysis.", style="text-align: justify;")
  ),
  eval_composite = list(
    "How are individual GCMs added to a composite?",
    shiny::p("Individual GCM rankings determine the order in which GCMs are included in composite models of increasing of size.
             Rank is based on mean annual estimated error for the selected climate variable over the selected
             spatial domain using the selected error statistic.", style="text-align: justify;")
  ),
  climdist_variables = list(
    "What do the available distributions represent?",
    shiny::p("Probability distributions are available for four random variables: total monthly precipitation and mean monthly
             minimum, mean, and maximum daily temperature. For these four monthly climate variables, continuous probability densities represent
             the estimated distribution of values across space for a given spatial domain.", style = "text-align:justify")
  )
)
# nolint end

#' Generate a SNAP Frequently Asked Questions (FAQ) widget
#'
#' Generate a widget that displays FAQs in an information/about section of an SNAP Shiny app.
#'
#' \code{faq} is a simple function containing a dictionary of common SNAP FAQ entries.
#' It is meant to override \code{apputils::faq}.
#' It returns a Bootstrap Collapse menu FAQ format by default. Changing to \code{format = "list"}
#' alternatively returns a list of question and answer pairs, each being a length-2 sublist.
#' In this case, each question is a character string and each answer is either a simple HTML paragraph
#' or a taglist of multiple HTML components if the answer contains more complex content (e.g., images and links).
#'
#' A key difference with the \code{open} argument that can be passed in a list to \code{bscollapse_args}
#' is that it must simply match a single \emph{dictionary entry} \code{id}, not a collapse panel question title or id (e.g., \code{open = "apps"}).
#'
#' The current FAQ dictionary IDs and the questions they refer to include:
#' \describe{
#'   \item{distributions}{Why use probability distributions?}
#'   \item{gcm}{What is a GCM?}
#'   \item{rcp}{What is an RCP?}
#'   \item{fmz}{What are fire management zones?}
#'   \item{apps}{How did you make this app? Are other apps available?}
#'   \item{alfresco_simulations}{What do "simulations" refer to in the data selection area?}
#'   \item{factsheet_about}{What are fact sheets?}
#'   \item{factsheet_availability}{Why are fact sheets not always available?}
#'   \item{climdist_variables}{What do the available distributions represent?}
#' }
#'
#' @param id character, the id for the \code{shinyBS::bsCollapse} element.
#' @param format character, \code{"bscollapse"} (default) or alternatively, \code{"list"}.
#' @param bscollapse_args a list of arguments passed to bsCollapse. Defaults to \code{list(id = "faq", open = NULL, multiple = FALSE)}.
#' @param showcase_args a list of arguments passed to \code{snapp_showcase}.
#'
#' @return a \code{shinyBS::bsCollapse} object or a list.
#' @export
#'
#' @examples
#' #not run
faq <- function(id, format = "bscollapse", bscollapse_args = list(id = "faq", open = NULL, multiple = FALSE),
                showcase_args = list(drop = NULL)){
  faqlist <- snap_faqlist
  if(!all(id %in% names(faqlist))) stop("All `id` values must match to SNAP FAQ dictionary entries.")
  if("apps" %in% id) faqlist$apps[[2]] <- shiny::tagList(faqlist$apps[[2]], snapp_showcase(drop = showcase_args$drop))
  open <- bscollapse_args$open
  bscollapse_args$open <- if(length(open) == 1 && open %in% names(faqlist)) faqlist[[open]][[1]] else NULL
  faqlist <- faqlist[id]
  if(format == "list") return(faqlist)
  if(format == "bscollapse")
    return(do.call(
      shinyBS::bsCollapse,
                   as.list(
                     c(bscollapse_args,
                       purrr::map(faqlist, ~shinyBS::bsCollapsePanel(.x[[1]], .x[[2]], style = "info"))
                       )
                     )
      )
    )
  stop("invalid FAQ format.")
}

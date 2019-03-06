# default to TRADE DEV environment if TEST_ENV is not set
TEST_ENV ?= DEV

PYLINKVALIDATE_ENV_VARS_PROD := \
	export IGNORED_PREFIXES="\
		http://exportbritain.org.uk/international-directory/,\
		http://mojolife.org.uk/,\
		http://p2pfa.info/platforms/,\
		http://www.elearningschool.co.uk,\
		http://www.epcmortgage.org.uk/,\
		http://www.export.org.uk/page/Market_Selection,\
		http://www.ftsolutions.co.uk,\
		http://www.jubaris.co.uk,\
		http://www.linkedin.com,\
		http://www.macduffshipdesign.com,\
		http://www.mbe-intl.com,\
		https://directory-cms-public.s3.amazonaws.com,\
		https://public-directory-supplier-gds.s3.amazonaws.com,\
		https://trade.great.gov.uk/search/,\
		https://twitter.com,\
		https://uk.linkedin.com/,\
		https://www.airforilfe.net,\
		https://www.callidusgroup.co.uk,\
		https://www.contactus.trade.gov.uk/office-finder/,\
		https://www.facebook.com,\
		https://www.gov.uk/tendering-for-public-sector-contracts,\
		https://www.great.gov.uk/sso/accounts/login/?next=,\
		https://www.great.gov.uk/sso/accounts/password/reset/?next=,\
		https://www.great.gov.uk/sso/accounts/signup/?next=,\
		https://www.linkedin.com,\
		https://www.nationalarchives.gov.uk/doc/open-government-licence,\
		https://www.pwc.co.uk/,\
		https://www.rmlgroup.com,\
		https://invest.great.gov.uk/de/industries/food-and-drink,\
		https://invest.great.gov.uk/pt/industries/financial-services,\
		https://www.contactus.trade.gov.uk/office-finder,\
		https://trade.great.gov.uk/suppliers/,\
		https://cms.trade.great.gov.uk/documents/,\
		https://invest.great.gov.uk/documents,\
		https://invest.great.gov.uk/de/uk-regions/midlands,\
		https://marketreachcalculator.com,\
		http://www.getingofar.gov.uk,\
		https://en.portal.santandertrade.com,\
		https://www.fnac.com,\
		http://www.laredoute.fr/\
		" && \
	export TEST_URLS="\
		https://www.great.gov.uk/ \
		https://www.great.gov.uk/community/ \
		https://www.great.gov.uk/find-a-buyer/ \
		https://www.great.gov.uk/sso/accounts/login/ \
		https://www.great.gov.uk/profile/about/ \
		https://invest.great.gov.uk/ \
		https://trade.great.gov.uk/ \
		https://opportunities.export.great.gov.uk/ \
		https://opportunities.export.great.gov.uk/opportunities?s=shoes&areas[]=&commit=Find+opportunities \
		https://selling-online-overseas.export.great.gov.uk/ \
		https://selling-online-overseas.export.great.gov.uk/markets/results/ \
		https://contact-us.export.great.gov.uk/soo/TriageForm?market=eBay"

PYLINKVALIDATE_ENV_VARS_STAGE := \
	export IGNORED_PREFIXES="\
		https://great.staging.uktrade.io/find-a-buyer/static/,\
		https://great.staging.uktrade.io/profile/static/,\
		https://great.staging.uktrade.io/sso/accounts/login/?next,\
		https://great.staging.uktrade.io/sso/accounts/password/reset/?next,\
		https://great.staging.uktrade.io/sso/accounts/signup/?next,\
		https://great.staging.uktrade.io/sso/static/,\
		https://great.staging.uktrade.io/static/,\
		https://great.staging.uktrade.io/trade/search/,\
		https://great.staging.uktrade.io/trade/static/,\
		https://great.staging.uktrade.io/trade/suppliers/,\
		https://invest.great.staging.uktrade.io/static/,\
		https://opportunities.export.staging.uktrade.io/static/,\
		https://selling-online-overseas.export.great.staging.uktrade.io/static/,\
		https://www.contactus.trade.gov.uk/office-finder,\
		http://www.export.org.uk/page/Market_Selection,\
		https://www.gov.uk/tendering-for-public-sector-contracts/overview,\
		http://exportbritain.org.uk/international-directory/,\
		http://mojolife.org.uk/,\
		http://p2pfa.info/platforms/,\
		http://www.elearningschool.co.uk,\
		http://www.epcmortgage.org.uk/,\
		http://www.ftsolutions.co.uk,\
		http://www.jubaris.co.uk,\
		http://www.linkedin.com,\
		http://www.macduffshipdesign.com,\
		http://www.mbe-intl.com,\
		https://twitter.com,\
		https://uk.linkedin.com/,\
		https://www.airforilfe.net,\
		https://www.callidusgroup.co.uk,\
		https://www.facebook.com,\
		https://www.linkedin.com,\
		https://www.nationalarchives.gov.uk/doc/open-government-licence,\
		https://www.pwc.co.uk/,https://www.rmlgroup.com\
		" && \
	export TEST_URLS="https://great.staging.uktrade.io/ https://great.staging.uktrade.io/community https://great.staging.uktrade.io/trade/ https://great.staging.uktrade.io/find-a-buyer/ https://great.staging.uktrade.io/sso/accounts/login/ https://great.staging.uktrade.io/profile/about/ https://invest.great.staging.uktrade.io/ https://invest.great.staging.uktrade.io/high-potential-opportunities/lightweight-structures/ https://invest.great.staging.uktrade.io/high-potential-opportunities/food-production/ https://invest.great.staging.uktrade.io/high-potential-opportunities/rail-infrastructure/ https://selling-online-overseas.export.great.staging.uktrade.io/ https://selling-online-overseas.export.great.staging.uktrade.io/markets/results/ https://opportunities.export.staging.uktrade.io/ https://opportunities.export.staging.uktrade.io/opportunities?s=shoes&areas[]=&commit=Find+opportunities "

PYLINKVALIDATE_ENV_VARS_DEV := \
	export IGNORED_PREFIXES="\
		https://great.dev.uktrade.io/find-a-buyer/static/,\
		https://great.dev.uktrade.io/profile/static/,\
		https://great.dev.uktrade.io/sso/accounts/login/?next,\
		https://great.dev.uktrade.io/sso/accounts/password/reset/?next,\
		https://great.dev.uktrade.io/sso/accounts/signup/?next,\
		https://great.dev.uktrade.io/sso/static/,\
		https://great.dev.uktrade.io/static/,\
		https://great.dev.uktrade.io/trade/search/,\
		https://great.dev.uktrade.io/trade/static/,\
		https://great.dev.uktrade.io/trade/suppliers/,\
		https://invest.great.dev.uktrade.io/static/,\
		https://selling-online-overseas.export.great.dev.uktrade.io/static/,\
		http://exportbritain.org.uk/international-directory/,\
		http://mojolife.org.uk/,\
		http://p2pfa.info/platforms/,\
		http://www.elearningschool.co.uk,\
		http://www.epcmortgage.org.uk/,\
		http://www.export.org.uk/page/Market_Selection,\
		http://www.ftsolutions.co.uk,\
		http://www.jubaris.co.uk,\
		http://www.linkedin.com,\
		http://www.macduffshipdesign.com,\
		http://www.mbe-intl.com,\
		https://twitter.com,\
		https://uk.linkedin.com/,\
		https://www.airforilfe.net,\
		https://www.callidusgroup.co.uk,\
		https://www.contactus.trade.gov.uk,\
		https://www.facebook.com,\
		https://www.gov.uk/tendering-for-public-sector-contracts/overview,\
		https://www.linkedin.com,\
		https://www.nationalarchives.gov.uk/doc/open-government-licence,\
		https://www.pwc.co.uk/,\
		https://www.rmlgroup.com" && \
	export TEST_URLS="\
		https://great.dev.uktrade.io/ \
		https://great.dev.uktrade.io/community/ \
		https://great.dev.uktrade.io/trade/ \
		https://great.dev.uktrade.io/find-a-buyer/ \
		https://great.dev.uktrade.io/sso/accounts/login/ \
		https://great.dev.uktrade.io/profile/about/ \
		https://invest.great.dev.uktrade.io/ \
		https://invest.great.dev.uktrade.io/high-potential-opportunities/lightweight-structures/ \
		https://invest.great.dev.uktrade.io/high-potential-opportunities/food-production/ \
		https://invest.great.dev.uktrade.io/high-potential-opportunities/rail-infrastructure/ \
		https://selling-online-overseas.export.great.dev.uktrade.io/ \
		https://selling-online-overseas.export.great.dev.uktrade.io/markets/results/"

HAWK_COOKIE := $(shell IP_RESTRICTOR_SKIP_CHECK_SECRET=$(IP_RESTRICTOR_SKIP_CHECK_SECRET_$(TEST_ENV)) python ./dead_links/cookie.py)
BASIC_AUTH := $(shell echo -n $(BASICAUTH_USER_$(TEST_ENV)):$(BASICAUTH_PASS_$(TEST_ENV)) | base64)

# Testing Production systems will check outside links
# Testing non-Production systems will not check outside links & HAWK cookie
# will be used.
ifndef IP_RESTRICTOR_SKIP_CHECK_SECRET_$(TEST_ENV)
  $(error IP_RESTRICTOR_SKIP_CHECK_SECRET_$(TEST_ENV) is undefined)
endif
ifndef BASICAUTH_USER_$(TEST_ENV)
  $(error BASICAUTH_USER_$(TEST_ENV) is undefined)
endif
ifndef BASICAUTH_PASS_$(TEST_ENV)
  $(error BASICAUTH_PASS_$(TEST_ENV) is undefined)
endif

ifeq ($(TEST_ENV),PROD)
	AUTH=
	COOKIE=
	TEST_OUTSIDE=--test-outside
else
ifeq ($(TEST_ENV),STAGE)
	AUTH=
	COOKIE=--header='Cookie: ${HAWK_COOKIE}'
	TEST_OUTSIDE=
endif
ifeq ($(TEST_ENV),DEV)
	AUTH=--header='Authorization: Basic ${BASIC_AUTH}'
	COOKIE=
	TEST_OUTSIDE=
endif
endif

dead_links_check:
	$(PYLINKVALIDATE_ENV_VARS_$(TEST_ENV)) && \
	echo "Running pylinkvalidate against: $${TEST_URLS}" && \
	pylinkvalidate.py \
	    --progress \
	    --console \
	    --timeout=55 \
	    --depth=5 \
	    --workers=10 \
	    --types=a,img,link,script \
	    $(TEST_OUTSIDE) \
	    --parser=lxml \
	    --format=junit \
	    --output=./reports/dead_links_report.xml \
	    --header="Connection: keep-alive" \
	    --header="Pragma: no-cache" \
	    --header="Cache-Control: no-cache" \
	    --header="Upgrade-Insecure-Requests: 1" \
	    --header="Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8" \
	    --header="DNT: 1" \
	    --header="Accept-Encoding: gzip, deflate" \
	    --header="User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36 link-checker-qa" \
	    $(COOKIE) \
	    $(AUTH) \
	    --ignore="$${IGNORED_PREFIXES}" \
	    $${TEST_URLS}

dead_links_check_with_json_report:
	$(PYLINKVALIDATE_ENV_VARS_$(TEST_ENV)) && \
	echo "Running pylinkvalidate against: $${TEST_URLS}" && \
	pylinkvalidate.py \
	    --progress \
	    --console \
	    --timeout=55 \
	    --depth=5 \
	    --workers=10 \
	    --types=a,img,link,script \
	    $(TEST_OUTSIDE) \
	    --report-type=all \
	    --parser=lxml \
	    --format=json \
	    --output=./reports/dead_links_report.json \
	    --header="Connection: keep-alive" \
	    --header="Pragma: no-cache" \
	    --header="Cache-Control: no-cache" \
	    --header="Upgrade-Insecure-Requests: 1" \
	    --header="Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8" \
	    --header="DNT: 1" \
	    --header="Accept-Encoding: gzip, deflate" \
	    --header="User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36 link-checker-qa" \
	    $(COOKIE) \
	    $(AUTH) \
	    --ignore="$${IGNORED_PREFIXES}" \
	    $${TEST_URLS}

cms_pages_check:
	echo "Running CMS pages check against: $(DIRECTORY_CMS_API_CLIENT_BASE_URL)" && \
	pytest --capture=no --verbose --junit-xml=./reports/cms_pages.xml cms_pages/


# compare contents of Staging & Dev environments by default
SERVICE ?= invest
ENVS_TO_COMPARE ?= stage_dev

compare_content:
	behave -k -t ~wip --junit --junit-directory=./reports/ content_diff/features/$(SERVICE)_$(ENVS_TO_COMPARE).feature


check_for_x_robots_tag_header:
	behave -k -t ~wip -t ~fixme --junit --junit-directory=./reports/ x_robots_header/


clean:
	rm -fr ./reports/*.json ./reports/*.html ./reports/*.xml ./reports/*.log


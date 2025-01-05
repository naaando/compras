from selenium.webdriver import Chrome
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager


def get_chrome_browser():
    options = Options()
    options.add_argument("--headless")
    options.add_argument("--no-sandbox")

    service = Service(ChromeDriverManager().install())
    browser = Chrome(service=service, options=options)

    return browser

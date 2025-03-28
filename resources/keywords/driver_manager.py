from selenium import webdriver
from selenium.webdriver.edge.service import Service
from webdriver_manager.microsoft import EdgeChromiumDriverManager  # Corrected import

def get_edge_driver():
    """Fetch the correct EdgeDriver version compatible with your Microsoft Edge."""
    # Use webdriver-manager to automatically download the compatible version of EdgeDriver
    driver_path = EdgeChromiumDriverManager().install()  # This will install and get the correct driver

    # Use the Service class to start the EdgeDriver
    service = Service(driver_path)

    options = webdriver.EdgeOptions()
    options.add_argument("--start-maximized")
    options.add_argument("--disable-infobars")
    options.add_argument("--disable-dev-shm-usage")
    options.add_argument("--no-sandbox")

    # Initialize the WebDriver with the Service and options
    driver = webdriver.Edge(service=service, options=options)
    return driver

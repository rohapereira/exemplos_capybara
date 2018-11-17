Before do
	Capybara.page.current_window.resize_to(1200, 720)
end

After do
	puts "Fim do teste"
end
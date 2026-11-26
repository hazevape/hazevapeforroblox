uipallet = {
	Main = Color3.fromRGB(23, 22, 30),
	Text = Color3.fromRGB(224, 222, 235),
	Font = Font.fromEnum(Enum.Font.FredokaOne),
	FontSemiBold = Font.fromEnum(Enum.Font.FredokaOne, Enum.FontWeight.SemiBold),
	Tween = TweenInfo.new(0.18, Enum.EasingStyle.Quad)
}

do
	local data = isfile('hazevape/profiles/color.txt') and loadJson('hazevape/profiles/color.txt')
	if data then
		uipallet.Main = data.Main and Color3.fromRGB(unpack(data.Main)) or uipallet.Main
		uipallet.Text = data.Text and Color3.fromRGB(unpack(data.Text)) or uipallet.Text
		uipallet.Font = data.Font and Font.new(
			data.Font:find('rbxasset') and data.Font
			or string.format('rbxasset://fonts/families/%s.json', data.Font)
		) or uipallet.Font
		uipallet.FontSemiBold = Font.new(uipallet.Font.Family, Enum.FontWeight.SemiBold)
	end

	fontsize.Font = uipallet.Font
end
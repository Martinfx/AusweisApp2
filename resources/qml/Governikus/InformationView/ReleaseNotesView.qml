/*
 * \copyright Copyright (c) 2020-2022 Governikus GmbH & Co. KG, Germany
 */

import QtQuick 2.15
import QtQuick.Layouts 1.15

import Governikus.Global 1.0
import Governikus.View 1.0
import Governikus.Style 1.0
import Governikus.Type.FormattedTextModel 1.0


GListView {
	id: root

	activeFocusOnTab: true

	displayMarginBeginning: Constants.pane_padding
	displayMarginEnd: Constants.pane_padding

	delegate: RowLayout {
		id: row

		width: root.width - Constants.pane_padding

		Accessible.role: Accessible.StaticText
		Accessible.name: contentText.text

		GText {
			visible: lineType === LineType.LISTITEM
			Layout.fillHeight: true

			verticalAlignment: Text.AlignTop
			fontSizeMode: Text.Fit
			text: "•"
			textStyle: contentText.textStyle
		}

		GText {
			id: contentText

			Layout.fillWidth: true

			text: content
			textStyle: {
				switch (lineType) {
				case LineType.HEADER:
					return Style.text.title
				case LineType.SECTION:
					return Style.text.header
				case LineType.SUBSECTION:
					return Style.text.header_accent
				default:
					return Style.text.normal
				}
			}
			font.underline: lineType === LineType.SECTION

			FocusFrame {
				scope: row
			}
		}
	}
}

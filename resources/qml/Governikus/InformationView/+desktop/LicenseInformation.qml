/*
 * \copyright Copyright (c) 2020-2022 Governikus GmbH & Co. KG, Germany
 */

import QtQuick 2.15

import Governikus.Global 1.0
import Governikus.View 1.0
import Governikus.Style 1.0
import Governikus.Type.ApplicationModel 1.0


GListView {
	id: listView

	readonly property string helpTopic: "helpLicenseinformation"

	activeFocusOnTab: true

	displayMarginBeginning: Constants.pane_padding
	displayMarginEnd: Constants.pane_padding

	model: ApplicationModel.getLicenseText()
	delegate: GText {
		width: listView.width - Constants.pane_padding

		text: model.modelData
		textStyle: Style.text.normal

		FocusFrame {}
	}
}

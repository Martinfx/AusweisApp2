/*
 * \copyright Copyright (c) 2016-2022 Governikus GmbH & Co. KG, Germany
 */

import QtQuick 2.15

import Governikus.Style 1.0

Rectangle {
	id: root

	color: Style.color.background_pane
	radius: Style.dimens.corner_radius
	border.width: Style.dimens.high_contrast_item_border
	border.color: Style.color.high_contrast_item_border
}

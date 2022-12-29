/*
 * Copyright (C) 2020 Darrel Griët <idanlcontact@gmail.com>
 * Copyright (C) 2016 Florent Revest <revestflo@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation, either version 2.1 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.5
import org.asteroid.controls 1.0

Item {
    property bool checked
    signal pressed(var mouse)

    width: Dims.l(30)
    height: width

    Icon {
        id: onIcon
        anchors.fill: parent
        name: "ios-checkmark-circle-outline"
        opacity: checked ? (!enabled ? 0.6 : 1.0) : 0.0
        Behavior on opacity { NumberAnimation { duration: 100 } }
    }
    Icon {
        id: offIcon
        anchors.fill: parent
        name: "ios-circle-outline"
        opacity: !checked ? (!enabled ? 0.6 : 1.0) : 0.0
        Behavior on opacity { NumberAnimation { duration: 100 } }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: checked = !checked
        onPressed: parent.pressed(mouse)
    }
}

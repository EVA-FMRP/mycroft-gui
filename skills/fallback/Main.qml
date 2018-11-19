/*
 * Copyright 2018 by Marco Martin <mart@kde.org>
 * Copyright 2018 David Edmundson <davidedmundson@kde.org>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

import QtQuick.Layouts 1.4
import QtQuick 2.4
import QtQuick.Controls 2.0
import org.kde.kirigami 2.4 as Kirigami

import Mycroft 1.0 as Mycroft

Mycroft.DelegateBase {
    backgroundImage: "https://source.unsplash.com/random"

    property alias utterance: content.text

    ColumnLayout { //maybe a flickable in case there's too much text instead of Eliding (Flickable delegate base?)
        anchors.fill: parent
        anchors.margins: Kirigami.Units.largeSpacing
        Item {
            Layout.fillHeight: true
        }
        Kirigami.Label {
            id: content
            Layout.fillWidth: true
            text: modelData.text
            wrapMode: Text.WordWrap
            elide: Text.ElideRight
        }
        Item {
            Layout.fillHeight: true
        }
    }
}
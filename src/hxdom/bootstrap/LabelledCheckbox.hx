/****
* Copyright (C) 2013 Sam MacPherson
* 
* Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
* 
* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
* 
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
****/

package hxdom.bootstrap;

import hxdom.Elements;
import hxdom.html.CharacterData;

/**
 * Easy access to a labelled checkbox which is the most common usage.
 * 
 * @author Sam MacPherson
 */
class LabelledCheckbox extends EDiv {
	
	public var label(default, set):String;
	public var checkbox(default, null):EInput;
	
	var etext:CharacterData;

	public function new (label:String, ?name:String, ?checked:Bool = false) {
		super();
		
		var elabel = ELabel.create();
		checkbox = EInput.create(Checkbox);
		if (name != null) checkbox.name = name;
		if (checked) checkbox.checked = true;
		etext = Text.create(label);
		this.label = label;
		this.className = "checkbox";
		
		elabel.appendChild(checkbox);
		elabel.appendChild(etext);
		appendChild(elabel);
	}
	
	function set_label (label:String):String {
		this.label = etext.data = label;
		
		return label;
	}
	
}
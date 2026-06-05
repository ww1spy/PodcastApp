package mobi.beyondpod.rsscore.helpers;

import android.util.Xml;
import java.io.FileOutputStream;
import java.io.IOException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes.dex */
public class XmlTextWriter {
    private static final String ENCODING = "UTF8";
    private boolean _isClosed = false;
    private XmlSerializer _serializer = Xml.newSerializer();
    private FileOutputStream _stream;

    public XmlTextWriter(String str) throws IOException {
        this._stream = new FileOutputStream(str);
        this._serializer.setOutput(this._stream, "UTF8");
    }

    public void writeStartDocument() throws IllegalArgumentException, IllegalStateException, IOException {
        this._serializer.startDocument("utf-8", false);
    }

    public void writeStartElement(String str) throws IllegalArgumentException, IllegalStateException, IOException {
        this._serializer.startTag(null, str);
    }

    public void writeAttributeString(String str, String str2) throws IllegalArgumentException, IllegalStateException, IOException {
        if (str2 == null) {
            return;
        }
        this._serializer.attribute(null, str, str2);
    }

    public void writeString(String str) throws IllegalArgumentException, IllegalStateException, IOException {
        this._serializer.text(str);
    }

    public void writeEndElement(String str) throws IllegalArgumentException, IllegalStateException, IOException {
        this._serializer.endTag(null, str);
    }

    public void close() throws IllegalArgumentException, IllegalStateException, IOException {
        if (this._isClosed) {
            return;
        }
        this._serializer.endDocument();
        this._serializer.flush();
        CoreHelper.sync(this._stream);
        this._stream.close();
        this._isClosed = true;
    }

    public boolean isClosed() {
        return this._isClosed;
    }
}

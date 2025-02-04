// Code generated by Wire protocol buffer compiler, do not edit.
// Source: squareup.protos.kotlin.Percents in percents_in_kdoc.proto
import Foundation
import Wire

public struct Percents {

    /**
     * e.g. "No limits, free to send and just 2.75% to receive".
     */
    public var text: String?
    public var unknownFields: Data = .init()

    public init(text: String? = nil) {
        self.text = text
    }

}

#if !WIRE_REMOVE_EQUATABLE
extension Percents : Equatable {
}
#endif

#if !WIRE_REMOVE_HASHABLE
extension Percents : Hashable {
}
#endif

extension Percents : ProtoMessage {
    public static func protoMessageTypeURL() -> String {
        return "type.googleapis.com/squareup.protos.kotlin.Percents"
    }
}

extension Percents : Proto2Codable {
    public init(from reader: ProtoReader) throws {
        var text: String? = nil

        let token = try reader.beginMessage()
        while let tag = try reader.nextTag(token: token) {
            switch tag {
            case 1: text = try reader.decode(String.self)
            default: try reader.readUnknownField(tag: tag)
            }
        }
        self.unknownFields = try reader.endMessage(token: token)

        self.text = text
    }

    public func encode(to writer: ProtoWriter) throws {
        try writer.encode(tag: 1, value: self.text)
        try writer.writeUnknownFields(unknownFields)
    }
}

#if !WIRE_REMOVE_CODABLE
extension Percents : Codable {
    public enum CodingKeys : String, CodingKey {

        case text

    }
}
#endif

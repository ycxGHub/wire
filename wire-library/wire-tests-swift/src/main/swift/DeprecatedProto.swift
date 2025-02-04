// Code generated by Wire protocol buffer compiler, do not edit.
// Source: squareup.protos.kotlin.DeprecatedProto in deprecated.proto
import Foundation
import Wire

public struct DeprecatedProto {

    @available(*, deprecated)
    public var foo: String?
    public var unknownFields: Data = .init()

    public init(foo: String? = nil) {
        self.foo = foo
    }

}

#if !WIRE_REMOVE_EQUATABLE
extension DeprecatedProto : Equatable {
}
#endif

#if !WIRE_REMOVE_HASHABLE
extension DeprecatedProto : Hashable {
}
#endif

extension DeprecatedProto : ProtoMessage {
    public static func protoMessageTypeURL() -> String {
        return "type.googleapis.com/squareup.protos.kotlin.DeprecatedProto"
    }
}

extension DeprecatedProto : Proto2Codable {
    public init(from reader: ProtoReader) throws {
        var foo: String? = nil

        let token = try reader.beginMessage()
        while let tag = try reader.nextTag(token: token) {
            switch tag {
            case 1: foo = try reader.decode(String.self)
            default: try reader.readUnknownField(tag: tag)
            }
        }
        self.unknownFields = try reader.endMessage(token: token)

        self.foo = foo
    }

    public func encode(to writer: ProtoWriter) throws {
        try writer.encode(tag: 1, value: self.foo)
        try writer.writeUnknownFields(unknownFields)
    }
}

#if !WIRE_REMOVE_CODABLE
extension DeprecatedProto : Codable {
    public enum CodingKeys : String, CodingKey {

        case foo

    }
}
#endif

// Code generated by Wire protocol buffer compiler, do not edit.
// Source: squareup.protos.kotlin.OptionalEnumUser in optional_enum.proto
import Foundation
import Wire

public struct OptionalEnumUser {

    public var optional_enum: OptionalEnum?
    public var unknownFields: Data = .init()

    public init(optional_enum: OptionalEnum? = nil) {
        self.optional_enum = optional_enum
    }

    public enum OptionalEnum : UInt32, CaseIterable, Codable {

        case FOO = 1
        case BAR = 2

    }

}

#if !WIRE_REMOVE_EQUATABLE
extension OptionalEnumUser : Equatable {
}
#endif

#if !WIRE_REMOVE_HASHABLE
extension OptionalEnumUser : Hashable {
}
#endif

extension OptionalEnumUser : ProtoMessage {
    public static func protoMessageTypeURL() -> String {
        return "type.googleapis.com/squareup.protos.kotlin.OptionalEnumUser"
    }
}

extension OptionalEnumUser : Proto2Codable {
    public init(from reader: ProtoReader) throws {
        var optional_enum: OptionalEnumUser.OptionalEnum? = nil

        let token = try reader.beginMessage()
        while let tag = try reader.nextTag(token: token) {
            switch tag {
            case 1: optional_enum = try reader.decode(OptionalEnumUser.OptionalEnum.self)
            default: try reader.readUnknownField(tag: tag)
            }
        }
        self.unknownFields = try reader.endMessage(token: token)

        self.optional_enum = optional_enum
    }

    public func encode(to writer: ProtoWriter) throws {
        try writer.encode(tag: 1, value: self.optional_enum)
        try writer.writeUnknownFields(unknownFields)
    }
}

#if !WIRE_REMOVE_CODABLE
extension OptionalEnumUser : Codable {
    public enum CodingKeys : String, CodingKey {

        case optional_enum

    }
}
#endif

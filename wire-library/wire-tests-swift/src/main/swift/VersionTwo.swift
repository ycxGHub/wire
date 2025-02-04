// Code generated by Wire protocol buffer compiler, do not edit.
// Source: squareup.protos.kotlin.unknownfields.VersionTwo in unknown_fields.proto
import Foundation
import Wire

public struct VersionTwo {

    public var i: Int32?
    public var v2_i: Int32?
    public var v2_s: String?
    public var v2_f32: UInt32?
    @JSONString
    public var v2_f64: UInt64?
    public var v2_rs: [String]
    public var obj: NestedVersionTwo?
    public var en: EnumVersionTwo?
    public var unknownFields: Data = .init()

    public init(
        i: Int32? = nil,
        v2_i: Int32? = nil,
        v2_s: String? = nil,
        v2_f32: UInt32? = nil,
        v2_f64: UInt64? = nil,
        v2_rs: [String] = [],
        obj: NestedVersionTwo? = nil,
        en: EnumVersionTwo? = nil
    ) {
        self.i = i
        self.v2_i = v2_i
        self.v2_s = v2_s
        self.v2_f32 = v2_f32
        self.v2_f64 = v2_f64
        self.v2_rs = v2_rs
        self.obj = obj
        self.en = en
    }

}

#if !WIRE_REMOVE_EQUATABLE
extension VersionTwo : Equatable {
}
#endif

#if !WIRE_REMOVE_HASHABLE
extension VersionTwo : Hashable {
}
#endif

extension VersionTwo : ProtoMessage {
    public static func protoMessageTypeURL() -> String {
        return "type.googleapis.com/squareup.protos.kotlin.unknownfields.VersionTwo"
    }
}

extension VersionTwo : Proto2Codable {
    public init(from reader: ProtoReader) throws {
        var i: Int32? = nil
        var v2_i: Int32? = nil
        var v2_s: String? = nil
        var v2_f32: UInt32? = nil
        var v2_f64: UInt64? = nil
        var v2_rs: [String] = []
        var obj: NestedVersionTwo? = nil
        var en: EnumVersionTwo? = nil

        let token = try reader.beginMessage()
        while let tag = try reader.nextTag(token: token) {
            switch tag {
            case 1: i = try reader.decode(Int32.self)
            case 2: v2_i = try reader.decode(Int32.self)
            case 3: v2_s = try reader.decode(String.self)
            case 4: v2_f32 = try reader.decode(UInt32.self, encoding: .fixed)
            case 5: v2_f64 = try reader.decode(UInt64.self, encoding: .fixed)
            case 6: try reader.decode(into: &v2_rs)
            case 7: obj = try reader.decode(NestedVersionTwo.self)
            case 8: en = try reader.decode(EnumVersionTwo.self)
            default: try reader.readUnknownField(tag: tag)
            }
        }
        self.unknownFields = try reader.endMessage(token: token)

        self.i = i
        self.v2_i = v2_i
        self.v2_s = v2_s
        self.v2_f32 = v2_f32
        self.v2_f64 = v2_f64
        self.v2_rs = v2_rs
        self.obj = obj
        self.en = en
    }

    public func encode(to writer: ProtoWriter) throws {
        try writer.encode(tag: 1, value: self.i)
        try writer.encode(tag: 2, value: self.v2_i)
        try writer.encode(tag: 3, value: self.v2_s)
        try writer.encode(tag: 4, value: self.v2_f32, encoding: .fixed)
        try writer.encode(tag: 5, value: self.v2_f64, encoding: .fixed)
        try writer.encode(tag: 6, value: self.v2_rs)
        try writer.encode(tag: 7, value: self.obj)
        try writer.encode(tag: 8, value: self.en)
        try writer.writeUnknownFields(unknownFields)
    }
}

#if !WIRE_REMOVE_CODABLE
extension VersionTwo : Codable {
    public enum CodingKeys : String, CodingKey {

        case i
        case v2_i
        case v2_s
        case v2_f32
        case v2_f64
        case v2_rs
        case obj
        case en

    }
}
#endif

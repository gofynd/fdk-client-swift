

import Foundation
public extension PlatformClient {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var validity: Validity

        public var rule: [Rule]

        public var validation: Validation?

        public var code: String

        public var ownership: Ownership

        public var state: State?

        public var author: CouponAuthor?

        public var schedule: CouponSchedule?

        public var typeSlug: String

        public var displayMeta: DisplayMeta

        public var tags: [String]?

        public var action: CouponAction?

        public var restrictions: Restrictions?

        public var ruleDefinition: RuleDefinition

        public var identifiers: Identifier

        public var dateMeta: CouponDateMeta?

        public enum CodingKeys: String, CodingKey {
            case validity

            case rule

            case validation

            case code

            case ownership

            case state

            case author

            case schedule = "_schedule"

            case typeSlug = "type_slug"

            case displayMeta = "display_meta"

            case tags

            case action

            case restrictions

            case ruleDefinition = "rule_definition"

            case identifiers

            case dateMeta = "date_meta"
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.validity = validity

            self.rule = rule

            self.validation = validation

            self.code = code

            self.ownership = ownership

            self.state = state

            self.author = author

            self.schedule = schedule

            self.typeSlug = typeSlug

            self.displayMeta = displayMeta

            self.tags = tags

            self.action = action

            self.restrictions = restrictions

            self.ruleDefinition = ruleDefinition

            self.identifiers = identifiers

            self.dateMeta = dateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            validity = try container.decode(Validity.self, forKey: .validity)

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            do {
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
        }
    }
}

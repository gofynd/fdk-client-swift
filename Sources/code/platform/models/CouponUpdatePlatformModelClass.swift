

import Foundation
public extension PlatformClient {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var identifiers: Identifier

        public var code: String

        public var displayMeta: DisplayMeta

        public var ownership: Ownership

        public var state: State?

        public var typeSlug: String

        public var schedule: CouponSchedule?

        public var validation: Validation?

        public var ruleDefinition: RuleDefinition

        public var restrictions: Restrictions?

        public var author: CouponAuthor?

        public var action: CouponAction?

        public var tags: [String]?

        public var validity: Validity

        public var rule: [Rule]

        public var dateMeta: CouponDateMeta?

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case code

            case displayMeta = "display_meta"

            case ownership

            case state

            case typeSlug = "type_slug"

            case schedule = "_schedule"

            case validation

            case ruleDefinition = "rule_definition"

            case restrictions

            case author

            case action

            case tags

            case validity

            case rule

            case dateMeta = "date_meta"
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.identifiers = identifiers

            self.code = code

            self.displayMeta = displayMeta

            self.ownership = ownership

            self.state = state

            self.typeSlug = typeSlug

            self.schedule = schedule

            self.validation = validation

            self.ruleDefinition = ruleDefinition

            self.restrictions = restrictions

            self.author = author

            self.action = action

            self.tags = tags

            self.validity = validity

            self.rule = rule

            self.dateMeta = dateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            code = try container.decode(String.self, forKey: .code)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            do {
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

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
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            validity = try container.decode(Validity.self, forKey: .validity)

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
        }
    }
}

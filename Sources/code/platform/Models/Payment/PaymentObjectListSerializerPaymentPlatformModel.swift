

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var userObject: [String: Any]

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentId: String?

        public var id: String

        public var collectedBy: String

        public var refundedBy: String

        public var refundObject: [String: Any]?

        public var allStatus: [String]

        public var paymentModeIdentifier: String

        public var applicationId: String

        public var companyId: String

        public var paymentMode: String

        public var modifiedOn: String

        public var amountInPaisa: String

        public var currency: String

        public var currentStatus: String

        public var paymentGateway: String

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case userObject = "user_object"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentId = "payment_id"

            case id

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case refundObject = "refund_object"

            case allStatus = "all_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case applicationId = "application_id"

            case companyId = "company_id"

            case paymentMode = "payment_mode"

            case modifiedOn = "modified_on"

            case amountInPaisa = "amount_in_paisa"

            case currency

            case currentStatus = "current_status"

            case paymentGateway = "payment_gateway"

            case createdOn = "created_on"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.userObject = userObject

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentId = paymentId

            self.id = id

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.refundObject = refundObject

            self.allStatus = allStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.applicationId = applicationId

            self.companyId = companyId

            self.paymentMode = paymentMode

            self.modifiedOn = modifiedOn

            self.amountInPaisa = amountInPaisa

            self.currency = currency

            self.currentStatus = currentStatus

            self.paymentGateway = paymentGateway

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            currency = try container.decode(String.self, forKey: .currency)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var userObject: [String: Any]

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentId: String?

        public var id: String

        public var collectedBy: String

        public var refundedBy: String

        public var refundObject: [String: Any]?

        public var allStatus: [String]

        public var paymentModeIdentifier: String

        public var applicationId: String

        public var companyId: String

        public var paymentMode: String

        public var modifiedOn: String

        public var amountInPaisa: String

        public var currency: String

        public var currentStatus: String

        public var paymentGateway: String

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case userObject = "user_object"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentId = "payment_id"

            case id

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case refundObject = "refund_object"

            case allStatus = "all_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case applicationId = "application_id"

            case companyId = "company_id"

            case paymentMode = "payment_mode"

            case modifiedOn = "modified_on"

            case amountInPaisa = "amount_in_paisa"

            case currency

            case currentStatus = "current_status"

            case paymentGateway = "payment_gateway"

            case createdOn = "created_on"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.userObject = userObject

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentId = paymentId

            self.id = id

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.refundObject = refundObject

            self.allStatus = allStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.applicationId = applicationId

            self.companyId = companyId

            self.paymentMode = paymentMode

            self.modifiedOn = modifiedOn

            self.amountInPaisa = amountInPaisa

            self.currency = currency

            self.currentStatus = currentStatus

            self.paymentGateway = paymentGateway

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            currency = try container.decode(String.self, forKey: .currency)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}

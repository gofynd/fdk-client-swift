

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var userObject: [String: Any]

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var companyId: String

        public var paymentId: String?

        public var createdOn: String

        public var amountInPaisa: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundedBy: String

        public var currentStatus: String

        public var paymentGateway: String

        public var currency: String

        public var allStatus: [String]

        public var applicationId: String

        public var refundObject: [String: Any]?

        public var collectedBy: String

        public var modifiedOn: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case userObject = "user_object"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case companyId = "company_id"

            case paymentId = "payment_id"

            case createdOn = "created_on"

            case amountInPaisa = "amount_in_paisa"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundedBy = "refunded_by"

            case currentStatus = "current_status"

            case paymentGateway = "payment_gateway"

            case currency

            case allStatus = "all_status"

            case applicationId = "application_id"

            case refundObject = "refund_object"

            case collectedBy = "collected_by"

            case modifiedOn = "modified_on"

            case id
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.userObject = userObject

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.companyId = companyId

            self.paymentId = paymentId

            self.createdOn = createdOn

            self.amountInPaisa = amountInPaisa

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundedBy = refundedBy

            self.currentStatus = currentStatus

            self.paymentGateway = paymentGateway

            self.currency = currency

            self.allStatus = allStatus

            self.applicationId = applicationId

            self.refundObject = refundObject

            self.collectedBy = collectedBy

            self.modifiedOn = modifiedOn

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currency = try container.decode(String.self, forKey: .currency)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)
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

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var companyId: String

        public var paymentId: String?

        public var createdOn: String

        public var amountInPaisa: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundedBy: String

        public var currentStatus: String

        public var paymentGateway: String

        public var currency: String

        public var allStatus: [String]

        public var applicationId: String

        public var refundObject: [String: Any]?

        public var collectedBy: String

        public var modifiedOn: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case userObject = "user_object"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case companyId = "company_id"

            case paymentId = "payment_id"

            case createdOn = "created_on"

            case amountInPaisa = "amount_in_paisa"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundedBy = "refunded_by"

            case currentStatus = "current_status"

            case paymentGateway = "payment_gateway"

            case currency

            case allStatus = "all_status"

            case applicationId = "application_id"

            case refundObject = "refund_object"

            case collectedBy = "collected_by"

            case modifiedOn = "modified_on"

            case id
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.userObject = userObject

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.companyId = companyId

            self.paymentId = paymentId

            self.createdOn = createdOn

            self.amountInPaisa = amountInPaisa

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundedBy = refundedBy

            self.currentStatus = currentStatus

            self.paymentGateway = paymentGateway

            self.currency = currency

            self.allStatus = allStatus

            self.applicationId = applicationId

            self.refundObject = refundObject

            self.collectedBy = collectedBy

            self.modifiedOn = modifiedOn

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currency = try container.decode(String.self, forKey: .currency)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

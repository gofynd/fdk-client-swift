

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var amountInPaisa: String

        public var refundObject: [String: Any]?

        public var paymentId: String?

        public var paymentMode: String

        public var collectedBy: String

        public var id: String

        public var refundedBy: String

        public var aggregatorPaymentObject: [String: Any]?

        public var currency: String

        public var applicationId: String

        public var modifiedOn: String

        public var currentStatus: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var companyId: String

        public var paymentGateway: String

        public var allStatus: [String]

        public var paymentModeIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case amountInPaisa = "amount_in_paisa"

            case refundObject = "refund_object"

            case paymentId = "payment_id"

            case paymentMode = "payment_mode"

            case collectedBy = "collected_by"

            case id

            case refundedBy = "refunded_by"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currency

            case applicationId = "application_id"

            case modifiedOn = "modified_on"

            case currentStatus = "current_status"

            case createdOn = "created_on"

            case userObject = "user_object"

            case companyId = "company_id"

            case paymentGateway = "payment_gateway"

            case allStatus = "all_status"

            case paymentModeIdentifier = "payment_mode_identifier"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.amountInPaisa = amountInPaisa

            self.refundObject = refundObject

            self.paymentId = paymentId

            self.paymentMode = paymentMode

            self.collectedBy = collectedBy

            self.id = id

            self.refundedBy = refundedBy

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currency = currency

            self.applicationId = applicationId

            self.modifiedOn = modifiedOn

            self.currentStatus = currentStatus

            self.createdOn = createdOn

            self.userObject = userObject

            self.companyId = companyId

            self.paymentGateway = paymentGateway

            self.allStatus = allStatus

            self.paymentModeIdentifier = paymentModeIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            id = try container.decode(String.self, forKey: .id)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var amountInPaisa: String

        public var refundObject: [String: Any]?

        public var paymentId: String?

        public var paymentMode: String

        public var collectedBy: String

        public var id: String

        public var refundedBy: String

        public var aggregatorPaymentObject: [String: Any]?

        public var currency: String

        public var applicationId: String

        public var modifiedOn: String

        public var currentStatus: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var companyId: String

        public var paymentGateway: String

        public var allStatus: [String]

        public var paymentModeIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case amountInPaisa = "amount_in_paisa"

            case refundObject = "refund_object"

            case paymentId = "payment_id"

            case paymentMode = "payment_mode"

            case collectedBy = "collected_by"

            case id

            case refundedBy = "refunded_by"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currency

            case applicationId = "application_id"

            case modifiedOn = "modified_on"

            case currentStatus = "current_status"

            case createdOn = "created_on"

            case userObject = "user_object"

            case companyId = "company_id"

            case paymentGateway = "payment_gateway"

            case allStatus = "all_status"

            case paymentModeIdentifier = "payment_mode_identifier"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.amountInPaisa = amountInPaisa

            self.refundObject = refundObject

            self.paymentId = paymentId

            self.paymentMode = paymentMode

            self.collectedBy = collectedBy

            self.id = id

            self.refundedBy = refundedBy

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currency = currency

            self.applicationId = applicationId

            self.modifiedOn = modifiedOn

            self.currentStatus = currentStatus

            self.createdOn = createdOn

            self.userObject = userObject

            self.companyId = companyId

            self.paymentGateway = paymentGateway

            self.allStatus = allStatus

            self.paymentModeIdentifier = paymentModeIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            id = try container.decode(String.self, forKey: .id)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
        }
    }
}

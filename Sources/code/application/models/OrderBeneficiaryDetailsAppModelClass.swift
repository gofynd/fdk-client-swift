

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var beneficiaryId: String

        public var accountNo: String

        public var address: String

        public var bankName: String

        public var transferMode: String

        public var delightsUserName: String?

        public var subtitle: String

        public var isActive: Bool

        public var title: String

        public var branchName: Bool?

        public var comment: Bool?

        public var id: Int

        public var mobile: Bool?

        public var accountHolder: String

        public var displayName: String

        public var createdOn: String

        public var ifscCode: String

        public var modifiedOn: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case beneficiaryId = "beneficiary_id"

            case accountNo = "account_no"

            case address

            case bankName = "bank_name"

            case transferMode = "transfer_mode"

            case delightsUserName = "delights_user_name"

            case subtitle

            case isActive = "is_active"

            case title

            case branchName = "branch_name"

            case comment

            case id

            case mobile

            case accountHolder = "account_holder"

            case displayName = "display_name"

            case createdOn = "created_on"

            case ifscCode = "ifsc_code"

            case modifiedOn = "modified_on"

            case email
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.beneficiaryId = beneficiaryId

            self.accountNo = accountNo

            self.address = address

            self.bankName = bankName

            self.transferMode = transferMode

            self.delightsUserName = delightsUserName

            self.subtitle = subtitle

            self.isActive = isActive

            self.title = title

            self.branchName = branchName

            self.comment = comment

            self.id = id

            self.mobile = mobile

            self.accountHolder = accountHolder

            self.displayName = displayName

            self.createdOn = createdOn

            self.ifscCode = ifscCode

            self.modifiedOn = modifiedOn

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            address = try container.decode(String.self, forKey: .address)

            bankName = try container.decode(String.self, forKey: .bankName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            title = try container.decode(String.self, forKey: .title)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            displayName = try container.decode(String.self, forKey: .displayName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}

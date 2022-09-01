

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateStoreId: String

        public var sku: String

        public var quantity: Int

        public var avlQty: Int

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var itemSize: String

        public var modifiedOn: String

        public var fyndStoreId: String

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var companyId: Int

        public var hsnCodeId: String

        public var discount: Double

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case affiliateStoreId = "affiliate_store_id"

            case sku

            case quantity

            case avlQty = "avl_qty"

            case identifier

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case id = "_id"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case discount

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateStoreId = affiliateStoreId

            self.sku = sku

            self.quantity = quantity

            self.avlQty = avlQty

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.id = id

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}

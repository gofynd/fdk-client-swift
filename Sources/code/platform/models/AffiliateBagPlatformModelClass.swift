

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var itemId: Int

        public var quantity: Int

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var id: String

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var unitPrice: Double

        public var fyndStoreId: String

        public var avlQty: Int

        public var sku: String

        public var discount: Double

        public var sellerIdentifier: String

        public var transferPrice: Int

        public var storeId: Int

        public var modifiedOn: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case quantity

            case identifier

            case amountPaid = "amount_paid"

            case id = "_id"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case sku

            case discount

            case sellerIdentifier = "seller_identifier"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.quantity = quantity

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.id = id

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.sku = sku

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

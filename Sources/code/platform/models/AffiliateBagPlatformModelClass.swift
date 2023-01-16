

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sellerIdentifier: String

        public var modifiedOn: String

        public var priceMarked: Double

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var fyndStoreId: String

        public var discount: Double

        public var deliveryCharge: Double

        public var avlQty: Int

        public var companyId: Int

        public var quantity: Int

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var hsnCodeId: String

        public var priceEffective: Double

        public var unitPrice: Double

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var sku: String

        public var identifier: [String: Any]

        public var storeId: Int

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case fyndStoreId = "fynd_store_id"

            case discount

            case deliveryCharge = "delivery_charge"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case quantity

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case unitPrice = "unit_price"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case sku

            case identifier

            case storeId = "store_id"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.fyndStoreId = fyndStoreId

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.avlQty = avlQty

            self.companyId = companyId

            self.quantity = quantity

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.unitPrice = unitPrice

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.sku = sku

            self.identifier = identifier

            self.storeId = storeId

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

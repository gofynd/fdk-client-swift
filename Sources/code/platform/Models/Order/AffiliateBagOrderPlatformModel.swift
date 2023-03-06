

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var transferPrice: Int

        public var storeId: Int

        public var deliveryCharge: Double

        public var sellerIdentifier: String

        public var discount: Double

        public var sku: String

        public var hsnCodeId: String

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var affiliateStoreId: String

        public var id: String

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var amountPaid: Double

        public var avlQty: Int

        public var modifiedOn: String

        public var itemId: Int

        public var priceEffective: Double

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case sellerIdentifier = "seller_identifier"

            case discount

            case sku

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case unitPrice = "unit_price"

            case identifier

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var transferPrice: Int

        public var storeId: Int

        public var deliveryCharge: Double

        public var sellerIdentifier: String

        public var discount: Double

        public var sku: String

        public var hsnCodeId: String

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var affiliateStoreId: String

        public var id: String

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var amountPaid: Double

        public var avlQty: Int

        public var modifiedOn: String

        public var itemId: Int

        public var priceEffective: Double

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case sellerIdentifier = "seller_identifier"

            case discount

            case sku

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case unitPrice = "unit_price"

            case identifier

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}

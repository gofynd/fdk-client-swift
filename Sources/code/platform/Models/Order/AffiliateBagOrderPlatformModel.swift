

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var storeId: Int

        public var modifiedOn: String

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var itemSize: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var itemId: Int

        public var fyndStoreId: String

        public var avlQty: Int

        public var hsnCodeId: String

        public var quantity: Int

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var id: String

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public var sku: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case discount

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case id = "_id"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"

            case sku

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.id = id

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta

            self.sku = sku

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var storeId: Int

        public var modifiedOn: String

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var itemSize: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var itemId: Int

        public var fyndStoreId: String

        public var avlQty: Int

        public var hsnCodeId: String

        public var quantity: Int

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var id: String

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public var sku: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case discount

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case id = "_id"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"

            case sku

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.id = id

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta

            self.sku = sku

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
